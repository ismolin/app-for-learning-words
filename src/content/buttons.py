from aiogram.types import (
    ReplyKeyboardMarkup,
    KeyboardButton,
    InlineKeyboardButton,
    InlineKeyboardMarkup
)

############################### user keyboard ##########################

user_keyboard = ReplyKeyboardMarkup(resize_keyboard=True, keyboard=[
    [KeyboardButton(text='Учить новые слова')],
    [KeyboardButton(text='Повторить слова')],
    [KeyboardButton(text='Настройки')],
])

########################### word count keyboard ########################

word_count_keyboard = ReplyKeyboardMarkup(resize_keyboard=True, keyboard=[
    [KeyboardButton(text='5'), KeyboardButton(text='10')],
    [KeyboardButton(text='15'), KeyboardButton(text='20')],
])

##################### time repeat keyboard #############################

time_buttons = [[KeyboardButton(text=f"{hour:02}:00")] for hour in range(24)]
time_buttons.append([KeyboardButton(text='Не надо мне напоминать')])

time_repeat_keyboard = ReplyKeyboardMarkup(resize_keyboard=True, keyboard=time_buttons)

##################### categories keyboard #############################

categories_keyboard = ReplyKeyboardMarkup(resize_keyboard=True, keyboard=[
    [KeyboardButton(text='1000 самых употребляемых слов')],
    [KeyboardButton(text='5000 самых употребляемых слов')],
    [KeyboardButton(text='Слова для IT')],
])

categories_keyboard_with_next_button = ReplyKeyboardMarkup(resize_keyboard=True, keyboard=[
    [KeyboardButton(text='1000 самых употребляемых слов')],
    [KeyboardButton(text='5000 самых употребляемых слов')],
    [KeyboardButton(text='Слова для IT')],
    [KeyboardButton(text='Продолжить')],
])

##################### new words quizlet keyboard #############################

new_words_quizlet_keyboard = InlineKeyboardMarkup(inline_keyboard=[
    [InlineKeyboardButton(text='Я уже знаю это слово', callback_data='Я уже знаю это слово')],
    [InlineKeyboardButton(text='Начать учить это слово', callback_data='Начать учить это слово')],
])

new_words_quizlet_keyboard2 = InlineKeyboardMarkup(inline_keyboard=[
    [InlineKeyboardButton(text='Я запомнил, отложить для повтора', callback_data='Я запомнил, отложить для повтора')],
    [InlineKeyboardButton(text='Показывать это слово еще', callback_data='Показывать это слово еще')],
])

##################### repetition words keyboard #############################

repetition_words_keyboard = InlineKeyboardMarkup(inline_keyboard=[
    [InlineKeyboardButton(text='Я вспомнил это слово', callback_data='Я вспомнил это слово')],
    [InlineKeyboardButton(text='Не вспомнил', callback_data='Не вспомнил')],
])

##################### general menu button #############################

general_menu_button = ReplyKeyboardMarkup(resize_keyboard=True, keyboard=[
    [KeyboardButton(text='Завершить')],
])

##################### settings keyboard #############################

settings_keyboard = ReplyKeyboardMarkup(resize_keyboard=True, keyboard=[
    [KeyboardButton(text='Изменить количество слов в день')],
    [KeyboardButton(text='Изменить категории')],
    [KeyboardButton(text='Настройки уведомлений')],
    [KeyboardButton(text='Главное меню')],
])

##################### add user words keyboard #############################

add_user_words_keyboard = InlineKeyboardMarkup(inline_keyboard=[
    [InlineKeyboardButton(text='Изменить карточку', callback_data='Изменить перевод')],
    [InlineKeyboardButton(text='Не добавлять эту карточку', callback_data='Не добавлять эту карточку')],
])
