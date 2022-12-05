from aiogram import Bot, types
from aiogram.dispatcher import Dispatcher
from aiogram.utils import executor
from dotenv import dotenv_values
from buttons import user_keyboard, word_count_keyboard, categories_keyboard, categories_keyboard_with_next_button, \
    time_repeat_keyboard, GeneralMenuButton
from aiogram.contrib.fsm_storage.memory import MemoryStorage
from database import db_select, db_update
import datetime
from repetition_of_words import repetition_words, start_repeating_words
from add_user_words import NewUserWords
from new_words_quizlet import NewWordsQuizlet

config = dotenv_values(".env")
storage = MemoryStorage()
bot = Bot(config['TOKEN'])

dp = Dispatcher(bot, storage=storage)


"""Handler of the start command"""

@dp.message_handler(commands=['start'])
async def start_bot(message: types.Message):
    if len(await db_select(sql = f"""SELECT user_id 
                                     FROM users 
                                     WHERE user_id = '{str(message.from_user.id)}'""")) > 0:
        await bot.send_message(message.from_user.id, "С возвращением!", reply_markup=user_keyboard)
    else:
        await db_update(sql = f"""INSERT INTO users(user_id, date_of_registration, state) 
                                  VALUES ({message.from_user.id}, '{datetime.datetime.now()}' ,'Start');
                                  CREATE TABLE {message.from_user.username}_info 
                                  (categories varchar(255), total_quantity_of_words varchar(255));
                                  CREATE TABLE {message.from_user.username}_words 
                                  (words_eng varchar(255), words_rus varchar(255), words_count INT, 
                                  last_repetition_time TIMESTAMP);
                                  CREATE TABLE {message.from_user.username}_days_words_list 
                                  (words_eng varchar(255), words_rus varchar(255));
                                  CREATE TABLE {message.from_user.username}_repetition_list 
                                  (words_eng varchar(255), words_rus varchar(255), words_count INT)""")

        await bot.send_message(message.from_user.id, "Привет! Это бот для запоминания английских слов!")
        await bot.send_message(message.from_user.id, "Выбери количество слов в день, которое бы ты хотел изучать:", 
                               reply_markup=word_count_keyboard)



@dp.message_handler(lambda message: message.text in {'5', '10', '15', '20'})
async def test(message: types.Message):
    if len(await db_select(sql=f"""SELECT state FROM users WHERE state = 'Start'""")) > 0:
        await bot.send_message(message.from_user.id, "OK! Хороший выбор!")
        await db_update(sql=f"""INSERT INTO {str(message.from_user.username)}_info(total_quantity_of_words) 
                                VALUES ({message.text})""")
        await bot.send_message(message.from_user.id,
                               "Давай я буду напоминать тебе изучать слова, чтобы прогресс шел быстрее? \n "
                               "\nВыбери время (МСК) в которое тебе будет удобно заниматься:",
                               reply_markup=time_repeat_keyboard)
        
    else:
        pass

@dp.message_handler(lambda message: message.text in {'00:00', '01:00', '02:00', '03:00', '04:00', '05:00',
                                                     '06:00','07:00','08:00','09:00','10:00','11:00',
                                                     '12:00','13:00','14:00','15:00','16:00','17:00',
                                                     '18:00','19:00','20:00','21:00','22:00','23:00'})
async def test(message: types.Message):
    if len(await db_select(sql=f"""SELECT state FROM users WHERE state = 'Start'""")) > 0:
        await bot.send_message(message.from_user.id, f"OK, буду напоминать в {message.text}!")
        await bot.send_message(message.from_user.id, "Выбери категории слов, которые бы ты хотел изучать:",
                           reply_markup=categories_keyboard)

@dp.message_handler(lambda message: message.text in {'1000 самых употребляемых слов',
                                                     '5000 самых употребляемых слов', 
                                                       'Слова для IT', 'Продолжить'})

async def test(message: types.Message):

    if len(await db_select(sql=f"""SELECT state FROM users WHERE state = 'Start'""")) > 0:

        if message.text == 'Продолжить':
            await bot.send_message(message.from_user.id,
                                   "Ну что, начнем? \n\nКнопками внизу можно делать все, что душе угодно...\n"
                                   "\nА для добавления своего слова - просто пришли его боту!",
                                   reply_markup=user_keyboard)

        else:
            if len(await db_select(sql=f"""SELECT categories 
                                           FROM {message.from_user.username}_info 
                                           WHERE categories = '{message.text}'""")) > 0:
                await bot.send_message(message.from_user.id, f"Вы уже добавили категорию '{message.text}' к себе...",
                                       reply_markup=categories_keyboard_with_next_button)
            else:
                await db_update(sql=f"""INSERT INTO {str(message.from_user.username)}_info(categories) 
                                        VALUES ('{message.text}')""")
                await bot.send_message(message.from_user.id, f"Категория '{message.text}' добавлена!",
                                       reply_markup=categories_keyboard_with_next_button)
    else:
        pass


@dp.message_handler(lambda message: message.text in {'Учить новые слова'})
async def test(message: types.Message):

    quizlet = NewWordsQuizlet(message, bot, callback=False)
    quantity_of_words_from_category_list = await quizlet.create_quantity_of_words_from_category_list()
    categories_list = await quizlet.create_categories_list()
    await quizlet.create_new_words_list(categories_list, quantity_of_words_from_category_list)

    words_count = await db_select(f"""SELECT COUNT(*) FROM {message.from_user.username}_days_words_list""")
    await bot.send_message(message.from_user.id, f'Я подобрал тебе {words_count[0][0]} разных слов из всех твоих категорий',
                           reply_markup=GeneralMenuButton)
    quizlet_card = await quizlet.create_quizlet_card()
    await quizlet.send_quizlet_card(quizlet_card, start_quizlet=True)


@dp.callback_query_handler(lambda call: call.data in {'Я уже знаю это слово',
                                                      'Начать учить это слово',
                                                      'Я запомнил, отложить для повтора',
                                                      'Показывать это слово еще'})
async def new_words_quizlet(message: types.Message):

    quizlet = NewWordsQuizlet(message, bot,  callback=True)

    if await quizlet.this_is_last_word() == True:
        await quizlet.the_end()

    else:
        if message.data == 'Я уже знаю это слово':
            categories_list = await quizlet.create_categories_list()
            await quizlet.generate_new_word(categories_list)
            await quizlet.i_know_this_word()
            next_word_card = await quizlet.create_quizlet_card()
            await quizlet.send_quizlet_card(next_word_card, start_quizlet=False)

        elif message.data == 'Начать учить это слово':
            await quizlet.start_learning_this_word()
            next_word_card = await quizlet.create_quizlet_card()
            await quizlet.send_quizlet_card(next_word_card, start_quizlet=False)

        elif message.data == 'Я запомнил, отложить для повтора':

            if await quizlet.this_is_last_word():
                await quizlet.the_end()

            else:
                await quizlet.delete_from_words_list()
                next_word_card = await quizlet.create_quizlet_card()
                await quizlet.send_quizlet_card(next_word_card, start_quizlet=False)

        elif message.data == 'Показывать это слово еще':
            await quizlet.show_this_word_again()
            next_word_card = await quizlet.create_quizlet_card()
            await quizlet.send_quizlet_card(next_word_card, start_quizlet=False)

@dp.message_handler(lambda message: message.text in {'Повторить слова'})
async def test(message: types.Message):
    await start_repeating_words(message, bot)

@dp.callback_query_handler(lambda call: call.data in {'Я вспомнил это слово', 'Не вспомнил'})
async def repetition_words_next(message: types.Message):
    await repetition_words(message, bot)

@dp.message_handler(lambda message: message.text in {'Завершить'})
async def repetition_words_next(message: types.Message):
    await bot.delete_message(message.from_user.id, message.message_id-1)
    await bot.send_message(message.from_user.id, 'Окей, заходи потом еще!',
                           reply_markup=user_keyboard)

# @dp.message_handler(lambda message: message.text in {'Настройки'})
# async def repetition_words_next(message: types.Message):
#     await bot.delete_message(message.from_user.id, message.message_id-1)
#     await bot.send_message(message.from_user.id, 'Окей, заходи еще потом !',
#                            reply_markup=user_keyboard)

@dp.message_handler(content_types=['text'])
async def start_bot(message: types.Message):
    new_word = NewUserWords(message)
    translate_word = await new_word.translate_word()
    await new_word.add_word_to_words_list(bot, *translate_word)


executor.start_polling(dp, skip_updates=True)
