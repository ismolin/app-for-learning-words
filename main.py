from aiogram import Bot, Dispatcher, F, types
from aiogram.types import Message, CallbackQuery
from aiogram.fsm.storage.memory import MemoryStorage
from aiogram.enums import ParseMode
from aiogram.client.default import DefaultBotProperties
from dotenv import dotenv_values
from src.content.buttons import user_keyboard, word_count_keyboard, \
    categories_keyboard, categories_keyboard_with_next_button, \
    time_repeat_keyboard, general_menu_button, settings_keyboard
from src.database.connections import db
from src.modules.repetition_of_words import RepeatingWords
from src.modules.add_user_words import NewUserWords
from src.modules.new_words_quizlet import NewWordsQuizlet
from src.modules.settings import UserSettings
from src.content.messages import come_back_message, start_message, quantity_selection_of_words_message, \
    quantity_of_words_set, timing_message, selecting_categories_message, categories_of_words, timing_map, \
    start_work_with_bot_message, category_already_exist_message, start_settings_message

import asyncio

config = dotenv_values(".env")
token = config.get('TOKEN')
if token is None:
    raise ValueError("TOKEN not found in .env file")

bot = Bot(token=token, default=DefaultBotProperties(parse_mode=ParseMode.HTML))
storage = MemoryStorage()
dp = Dispatcher(storage=storage)

# START command
@dp.message(F.text == "/start")
async def start_command(message: Message):
    user_settings = UserSettings(message, bot, callback=False)
    if await user_settings.user_exist():
        await message.answer(come_back_message, reply_markup=user_keyboard)
        await user_settings.set_state("Work")
    else:
        await user_settings.create_user_tables()
        await user_settings.set_state("Start")
        await message.answer(start_message)
        await message.answer(quantity_selection_of_words_message, reply_markup=word_count_keyboard)

# Select number of words
@dp.message(F.text.in_(quantity_of_words_set))
async def set_total_quantity(message: Message):
    user_settings = UserSettings(message, bot, callback=False)
    if await user_settings.this_is_first_settings():
        await user_settings.update_total_quantity_of_words()
        await message.answer(timing_message, reply_markup=time_repeat_keyboard)
    else:
        await user_settings.update_total_quantity_of_words()

# Select time
@dp.message(F.text.in_(timing_map))
async def set_time_repetition(message: Message):
    user_settings = UserSettings(message, bot, callback=False)
    if await user_settings.this_is_first_settings():
        await user_settings.set_time_repetition()
        await message.answer(selecting_categories_message, reply_markup=categories_keyboard)
    else:
        await user_settings.update_time_repetition()

# Select categories
@dp.message(F.text.in_(categories_of_words))
async def set_categories(message: Message):
    user_settings = UserSettings(message, bot, callback=False)
    if await user_settings.this_is_first_settings():
        if message.text == 'Продолжить':
            await message.answer(start_work_with_bot_message, reply_markup=user_keyboard)
            await user_settings.set_state("Work")
        elif await user_settings.category_exist():
            await message.answer(category_already_exist_message.format(message.text), reply_markup=categories_keyboard_with_next_button)
        else:
            await user_settings.update_category()
    else:
        if message.text == 'Продолжить':
            await message.answer(start_settings_message, reply_markup=settings_keyboard)
        elif await user_settings.category_exist():
            await message.answer(category_already_exist_message, reply_markup=categories_keyboard_with_next_button)
        else:
            await user_settings.update_category()

# Start learning new words
@dp.message(F.text == 'Учить новые слова')
async def start_new_words(message: Message):
    quizlet = NewWordsQuizlet(message, bot, callback=False)
    q_list = await quizlet.create_quantity_of_words_from_category_list()
    c_list = await quizlet.create_categories_list()
    await quizlet.create_new_words_list(c_list, q_list)
    words_count = await db.execute(f"SELECT COUNT(*) FROM {message.from_user.username}_days_words_list")
    await message.answer(f'Я подобрал тебе {words_count[0][0]} разных слов из всех твоих категорий', reply_markup=general_menu_button)
    quizlet_card = await quizlet.create_quizlet_card()
    await quizlet.send_quizlet_card(quizlet_card, start_quizlet=True)

# Quizlet buttons
@dp.callback_query(F.data.in_({'Я уже знаю это слово', 'Начать учить это слово', 'Я запомнил, отложить для повтора', 'Показывать это слово еще'}))
async def quizlet_actions(call: CallbackQuery):
    quizlet = NewWordsQuizlet(call, bot, callback=True)
    if await quizlet.this_is_last_word():
        await quizlet.the_end()
        return

    if call.data == 'Я уже знаю это слово':
        await quizlet.i_know_this_word()
    elif call.data == 'Начать учить это слово':
        await quizlet.start_learning_this_word()
    elif call.data == 'Я запомнил, отложить для повтора':
        await quizlet.delete_from_words_list()
    elif call.data == 'Показывать это слово еще':
        await quizlet.show_this_word_again()

    next_card = await quizlet.create_quizlet_card()
    await quizlet.send_quizlet_card(next_card, start_quizlet=False)

# Repeat words
@dp.message(F.text == 'Повторить слова')
async def start_repetition(message: Message):
    repeat = RepeatingWords(message, bot, callback=False)
    await repeat.start_repeating_words()
    await repeat.send_repetition_card()

# Repetition buttons
@dp.callback_query(F.data.in_({'Я вспомнил это слово', 'Не вспомнил'}))
async def repetition_handler(call: CallbackQuery):
    repeat = RepeatingWords(call, bot, callback=True)
    await repeat.update_information_of_word()
    if await repeat.this_is_last_word_in_list():
        await repeat.the_end()
    else:
        await repeat.send_repetition_card()

# Settings
@dp.message(F.text.in_({'Настройки', 'Изменить количество слов в день', 'Главное меню', 'Завершить', 'Изменить категории', 'Настройки уведомлений'}))
async def settings_handler(message: Message):
    actions = {
        'Настройки': ('Давай мы с тобой тут все настроим...', settings_keyboard),
        'Изменить количество слов в день': ("Выбери количество слов в день, которое бы ты хотел изучать:", word_count_keyboard),
        'Главное меню': ('Давай уже учиться...', user_keyboard),
        'Завершить': ('Окей, заходи потом еще!', user_keyboard),
        'Изменить категории': ("Выбери категории слов, которые бы ты хотел изучать:", categories_keyboard),
        'Настройки уведомлений': ('Выбери время (МСК) в которое тебе будет удобно заниматься:', time_repeat_keyboard)
    }
    if message.text == 'Завершить':
        await bot.delete_message(message.chat.id, message.message_id - 1)
    text, keyboard = actions[message.text]
    await message.answer(text, reply_markup=keyboard)

# Handle custom word from user
@dp.message()
async def handle_new_word(message: Message):
    new_word = NewUserWords(message, bot, callback=False)
    if await new_word.state_is_change_card():
        await new_word.change_translation()
    else:
        word_data = await new_word.translate_word()
        await new_word.add_word_to_words_list(*word_data)

# Handle translation button clicks
@dp.callback_query(F.data.in_({'Изменить перевод', 'Не добавлять эту карточку'}))
async def handle_translation_changes(call: CallbackQuery):
    new_word = NewUserWords(call, bot, callback=True)
    if call.data == 'Изменить перевод':
        await new_word.request_new_translation()
    else:
        await new_word.do_not_add_this_word()

async def main():
    await dp.start_polling(bot)

if __name__ == "__main__":
    asyncio.run(main())