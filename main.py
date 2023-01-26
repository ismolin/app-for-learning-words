from aiogram import Bot, types
from aiogram.dispatcher import Dispatcher
from aiogram.utils import executor
from dotenv import dotenv_values
from src.keyboards.buttons import user_keyboard, word_count_keyboard, \
    categories_keyboard, categories_keyboard_with_next_button, \
    time_repeat_keyboard, general_menu_button, settings_keyboard
from src.database.connections import db_select
from src.modules.repetition_of_words import RepeatingWords
from src.modules.add_user_words import NewUserWords
from src.modules.new_words_quizlet import NewWordsQuizlet
from src.modules.settings import UserSettings

config = dotenv_values("env.txt")
bot = Bot(config['TOKEN'])
dp = Dispatcher(bot)


@dp.message_handler(commands=['start'])
async def start_command(message: types.Message):
    """Handler of the start command: checks the presence in the database or creation of custom tables"""

    user_settings = UserSettings(message, bot, callback=False)
    if user_settings.user_exist():
        await bot.send_message(message.from_user.id, "С возвращением!", reply_markup=user_keyboard)
        await user_settings.set_state("Work")
    else:
        await user_settings.create_user_tables()
        await user_settings.set_state("Start")
        await bot.send_message(message.from_user.id, "Привет! Это бот для запоминания английских слов!")
        await bot.send_message(message.from_user.id, "Выбери количество слов в день, которое бы ты хотел изучать:",
                               reply_markup=word_count_keyboard)


@dp.message_handler(lambda message: message.text in {'5', '10', '15', '20'})
async def set_and_update_total_quantity_of_words(message: types.Message):
    user_settings = UserSettings(message, bot, callback=False)
    if await user_settings.this_is_first_settings():
        await user_settings.update_total_quantity_of_words()
        await bot.send_message(message.from_user.id,
                               "Давай я буду напоминать тебе изучать слова, чтобы прогресс шел быстрее? \n "
                               "\nВыбери время (МСК) в которое тебе будет удобно заниматься:",
                               reply_markup=time_repeat_keyboard)
    else:
        await user_settings.update_total_quantity_of_words()


@dp.message_handler(lambda message: message.text in {'00:00', '01:00', '02:00', '03:00', '04:00', '05:00',
                                                     '06:00', '07:00', '08:00', '09:00', '10:00', '11:00',
                                                     '12:00', '13:00', '14:00', '15:00', '16:00', '17:00',
                                                     '18:00', '19:00', '20:00', '21:00', '22:00', '23:00'})
async def set_and_update_time_repetition(message: types.Message):
    user_settings = UserSettings(message, bot, callback=False)
    if await user_settings.this_is_first_settings():
        await user_settings.set_time_repetition()
        await bot.send_message(message.from_user.id, "Выбери категории слов, которые бы ты хотел изучать:",
                               reply_markup=categories_keyboard)
    else:
        await user_settings.update_time_repetition()


@dp.message_handler(lambda message: message.text in {'1000 самых употребляемых слов',
                                                     '5000 самых употребляемых слов',
                                                     'Слова для IT', 'Продолжить'})
async def set_and_update_categories(message: types.Message):
    user_settings = UserSettings(message, bot, callback=False)
    if user_settings.this_is_first_settings():
        if message.text == 'Продолжить':
            await bot.send_message(message.from_user.id,
                                   "Ну что, начнем? \n\nКнопками внизу можно делать все, что душе угодно...\n"
                                   "\nА для добавления своего слова - просто пришли его боту!",
                                   reply_markup=user_keyboard)
            await user_settings.set_state("Work")

        else:
            if await user_settings.category_exist():
                await bot.send_message(message.from_user.id, f"Вы уже добавили категорию '{message.text}' к себе...",
                                       reply_markup=categories_keyboard_with_next_button)
            else:
                await user_settings.update_category()
    else:
        if message.text == 'Продолжить':
            await bot.send_message(message.from_user.id, 'Давай мы с тобой тут все настроим...',
                                   reply_markup=settings_keyboard)

        else:
            if await user_settings.category_exist():
                await bot.send_message(message.from_user.id, f"Вы уже добавили категорию '{message.text}' к себе...",
                                       reply_markup=categories_keyboard_with_next_button)
            else:
                await user_settings.update_category()


@dp.message_handler(lambda message: message.text in {'Учить новые слова'})
async def start_new_words_quizlet(message: types.Message):
    quizlet = NewWordsQuizlet(message, bot, callback=False)
    quantity_of_words_from_category_list = await quizlet.create_quantity_of_words_from_category_list()
    categories_list = await quizlet.create_categories_list()
    await quizlet.create_new_words_list(categories_list, quantity_of_words_from_category_list)

    words_count = await db_select(f"""SELECT COUNT(*) FROM {message.from_user.username}_days_words_list""")
    await bot.send_message(message.from_user.id,
                           f'Я подобрал тебе {words_count[0][0]} разных слов из всех твоих категорий',
                           reply_markup=general_menu_button)
    quizlet_card = await quizlet.create_quizlet_card()
    await quizlet.send_quizlet_card(quizlet_card, start_quizlet=True)


@dp.callback_query_handler(lambda call: call.data in {'Я уже знаю это слово',
                                                      'Начать учить это слово',
                                                      'Я запомнил, отложить для повтора',
                                                      'Показывать это слово еще'})
async def new_words_quizlet(call: types.CallbackQuery):
    quizlet = NewWordsQuizlet(call, bot, callback=True)

    if await quizlet.this_is_last_word():
        await quizlet.the_end()

    else:
        if call.data == 'Я уже знаю это слово':
            categories_list = await quizlet.create_categories_list()
            await quizlet.generate_new_word(categories_list)
            await quizlet.i_know_this_word()
            next_word_card = await quizlet.create_quizlet_card()
            await quizlet.send_quizlet_card(next_word_card, start_quizlet=False)

        elif call.data == 'Начать учить это слово':
            await quizlet.start_learning_this_word()
            next_word_card = await quizlet.create_quizlet_card()
            await quizlet.send_quizlet_card(next_word_card, start_quizlet=False)

        elif call.data == 'Я запомнил, отложить для повтора':

            if await quizlet.this_is_last_word():
                await quizlet.the_end()

            else:
                await quizlet.delete_from_words_list()
                next_word_card = await quizlet.create_quizlet_card()
                await quizlet.send_quizlet_card(next_word_card, start_quizlet=False)

        elif call.data == 'Показывать это слово еще':
            await quizlet.show_this_word_again()
            next_word_card = await quizlet.create_quizlet_card()
            await quizlet.send_quizlet_card(next_word_card, start_quizlet=False)


@dp.message_handler(lambda message: message.text in {'Повторить слова'})
async def start_repeating_words(message: types.Message):
    new_repeating_words = RepeatingWords(message, bot, callback=False)
    await new_repeating_words.start_repeating_words()
    await new_repeating_words.send_repetition_card()


@dp.callback_query_handler(lambda call: call.data in {'Я вспомнил это слово', 'Не вспомнил'})
async def repeating_words(call: types.CallbackQuery):
    new_repeating_words = RepeatingWords(call, bot, callback=True)
    if call.data in {'Я вспомнил это слово'}:
        if await new_repeating_words.this_is_last_word_in_list():
            await new_repeating_words.update_information_of_word()
            await new_repeating_words.the_end()
        else:
            await new_repeating_words.update_information_of_word()
            await new_repeating_words.send_repetition_card()
    else:
        await new_repeating_words.update_information_of_word()
        await new_repeating_words.send_repetition_card()


@dp.message_handler(lambda message: message.text in {'Настройки', 'Изменить количество слов в день',
                                                     'Главное меню', 'Завершить', 'Изменить категории',
                                                     'Настройки уведомлений'})
async def set_settings(message: types.Message):
    if message.text == 'Настройки':
        await bot.send_message(message.from_user.id, 'Давай мы с тобой тут все настроим...',
                               reply_markup=settings_keyboard)
    elif message.text == 'Изменить количество слов в день':
        await bot.send_message(message.from_user.id, "Выбери количество слов в день, которое бы ты хотел изучать:",
                               reply_markup=word_count_keyboard)
    elif message.text == 'Главное меню':
        await bot.send_message(message.from_user.id, 'Давай уже учиться...',
                               reply_markup=user_keyboard)
    elif message.text == 'Завершить':
        await bot.delete_message(message.from_user.id, message.message_id - 1)
        await bot.send_message(message.from_user.id, 'Окей, заходи потом еще!',
                               reply_markup=user_keyboard)
    elif message.text == 'Изменить категории':
        await bot.send_message(message.from_user.id, "Выбери категории слов, которые бы ты хотел изучать:",
                               reply_markup=categories_keyboard)
    elif message.text == 'Настройки уведомлений':
        await bot.send_message(message.from_user.id, 'Выбери время (МСК) в которое тебе будет удобно заниматься:',
                               reply_markup=time_repeat_keyboard)


@dp.callback_query_handler(lambda call: call.data in {'Изменить перевод', 'Не добавлять эту карточку'})
async def new_user_word_changes(call: types.CallbackQuery):
    new_word = NewUserWords(call, bot, callback=True)
    if call.data in {'Изменить перевод'}:
        await new_word.request_new_translation()
    else:
        await new_word.do_not_add_this_word()


@dp.message_handler(content_types=['text'])
async def add_new_user_word(message: types.Message):
    new_word = NewUserWords(message, bot, callback=False)
    if await new_word.state_is_change_card():
        await new_word.change_translation()
    else:
        translate_word = await new_word.translate_word()
        await new_word.add_word_to_words_list(*translate_word)


executor.start_polling(dp, skip_updates=True)
