from aiogram import Bot, types
from aiogram.dispatcher import Dispatcher, FSMContext
from aiogram.utils import executor
from config import TOKEN
from buttons import user_keyboard, word_count_keyboard, categories_keyboard, categories_keyboard_with_next_button, \
    time_repeat_keyboard, new_words_quizlet_keyboard, new_words_quizlet_keyboard2, GeneralMenuButton
from aiogram.contrib.fsm_storage.memory import MemoryStorage
from database import db_select, db_update, db_update_many
from quizlet_module import create_words_list, start_quizlet, generate_word
from aiogram.utils.markdown import hspoiler
import datetime
from repetition_of_words_module import repetition_words, start_repeating_words
from add_words_module import NewUserWords

storage = MemoryStorage()
bot = Bot(TOKEN)
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

    await create_words_list(message.from_user.username)
    words_count = await db_select(f"""SELECT COUNT(*) FROM {message.from_user.username}_days_words_list""")
    print(words_count)
    await bot.send_message(message.from_user.id, f'Я подобрал тебе {words_count[0][0]} разных слов из всех твоих категорий',
                           reply_markup=GeneralMenuButton)
    text = await start_quizlet(message.from_user.username)
    await bot.send_message(message.from_user.id, text, parse_mode='HTML', reply_markup=new_words_quizlet_keyboard)

@dp.callback_query_handler(lambda call: call.data in {'Я уже знаю это слово',
                                                      'Начать учить это слово',
                                                      'Я запомнил, отложить для повтора',
                                                      'Показывать это слово еще'})
async def test(message: types.Message):

        time_now = datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")

    if len(await db_select(sql=f"""SELECT * FROM {message.from_user.username}_days_words_list""")) == 1:
        await bot.delete_message(message.from_user.id, message.message.message_id)
        await bot.send_message(message.from_user.id, 'Так держать! Не забудь зайти повторить слова!', parse_mode='HTML',
                               reply_markup=user_keyboard)
    else:
        if message.data == 'Я уже знаю это слово':
            await generate_new_word(message.from_user.username)
            known_word = message.message.text.split('\n')
            await db_update(sql = f"""DELETE FROM {message.from_user.username}_days_words_list 
                                      WHERE words_eng = '{known_word[0]}';
                                      INSERT INTO {message.from_user.username}_words
                                      (words_eng, words_rus, words_count) 
                                      VALUES ('{known_word[0]}', '{known_word[1]}', {6})""")
            await bot.delete_message(message.from_user.id, message.message.message_id)
            next_word = await start_quizlet(message.from_user.username)
            next_word_eng = next_word.split('\n')[0]
            if len(await db_select(sql=f"""SELECT * FROM {message.from_user.username}_words 
                                           WHERE words_eng = '{next_word_eng}'""")) > 0:
                await bot.send_message(message.from_user.id, next_word, parse_mode='HTML',
                                       reply_markup=new_words_quizlet_keyboard2)

            else:
                await bot.send_message(message.from_user.id, next_word, parse_mode='HTML',
                                       reply_markup=new_words_quizlet_keyboard)

        elif message.data == 'Начать учить это слово':

            unknown_word = message.message.text.split('\n')
            print(time_now)
            await db_update(sql=f"""DELETE FROM {message.from_user.username}_days_words_list 
                                    WHERE words_eng = '{unknown_word[0]}';
                                    INSERT INTO {message.from_user.username}_days_words_list(words_eng, words_rus) 
                                    VALUES ('{unknown_word[0]}','{unknown_word[1]}');
                                    INSERT INTO {message.from_user.username}_words 
                                    (words_eng, words_rus, words_count, last_repetition_time) 
                                    VALUES ('{unknown_word[0]}', '{unknown_word[1]}', {1},  '{time_now}')""")

            await bot.delete_message(message.from_user.id, message.message.message_id)
            next_word = await start_quizlet(message.from_user.username)
            next_word_eng = next_word.split('\n')[0]
            if len(await db_select(sql=f"""SELECT * FROM {message.from_user.username}_words 
                                           WHERE words_eng = '{next_word_eng}'""")) > 0:
                await bot.send_message(message.from_user.id, next_word, parse_mode='HTML',
                                       reply_markup=new_words_quizlet_keyboard2)
            else:
                await bot.send_message(message.from_user.id, next_word, parse_mode='HTML',
                                       reply_markup=new_words_quizlet_keyboard)

        elif message.data == 'Я запомнил, отложить для повтора':
            if len(await db_select(sql=f"""SELECT * FROM {message.from_user.username}_days_words_list""")) == 1:
                    await bot.delete_message(message.from_user.id, message.message.message_id)
                    await bot.send_message(message.from_user.id, 'Так держать! Не забудь зайти поторить слова!',
                                           reply_markup=user_keyboard)
            else:
                known_word = message.message.text.split('\n')[0]
                await db_update(sql=f"""DELETE FROM {message.from_user.username}_days_words_list 
                                        WHERE words_eng = '{known_word}'""")
                await bot.delete_message(message.from_user.id, message.message.message_id)
                next_word = await start_quizlet(message.from_user.username)
                next_word_eng = next_word.split('\n')[0]

                if len(await db_select(sql=f"""SELECT * FROM {message.from_user.username}_words 
                                               WHERE words_eng = '{next_word_eng}'""")) > 0:
                    await bot.send_message(message.from_user.id, next_word, parse_mode='HTML',
                                           reply_markup=new_words_quizlet_keyboard2)
                else:
                    await bot.send_message(message.from_user.id, next_word, parse_mode='HTML',
                                           reply_markup=new_words_quizlet_keyboard)

        elif message.data == 'Показывать это слово еще':

            unknown_word = message.message.text.split('\n')
            await db_update(sql=f"""DELETE FROM {message.from_user.username}_days_words_list 
                                    WHERE words_eng = '{unknown_word[0]}';
                                    INSERT INTO {message.from_user.username}_days_words_list(words_eng, words_rus) 
                                    VALUES ('{unknown_word[0]}','{unknown_word[1]}')""")

            await bot.delete_message(message.from_user.id, message.message.message_id)
            next_word = await start_quizlet(message.from_user.username)
            next_word_eng = next_word.split('\n')[0]
            if len(await db_select(sql=f"""SELECT * FROM {message.from_user.username}_words 
                                           WHERE words_eng = '{next_word_eng}'""")) > 0:
                await bot.send_message(message.from_user.id, next_word, parse_mode='HTML',
                                       reply_markup=new_words_quizlet_keyboard2)
            else:
                await bot.send_message(message.from_user.id, next_word, parse_mode='HTML',
                                       reply_markup=new_words_quizlet_keyboard)

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

@dp.message_handler(lambda message: message.text in {'Настройки'})
async def repetition_words_next(message: types.Message):
    await bot.delete_message(message.from_user.id, message.message_id-1)
    await bot.send_message(message.from_user.id, 'Окей, заходи еще потом !',
                           reply_markup=user_keyboard)

@dp.message_handler(content_types=['text'])
async def start_bot(message: types.Message):
    new_word = NewUserWords(message)
    await new_word.translate_and_add_word(bot)


executor.start_polling(dp, skip_updates=True)
