from aiogram.types import (
    ReplyKeyboardMarkup,
    KeyboardButton as AiogramKeyboardButton,
    InlineKeyboardButton,
    InlineKeyboardMarkup
)


############################### user keyboard ##########################

new_words = AiogramKeyboardButton('Учить новые слова')
repeat_words = AiogramKeyboardButton('Повторить слова')
settings = AiogramKeyboardButton('Настройки')

user_keyboard = ReplyKeyboardMarkup(resize_keyboard=True)
user_keyboard.add(new_words).add(repeat_words).add(settings)


########################### word count keyboard ########################

button5 = AiogramKeyboardButton('5')
button10 = AiogramKeyboardButton('10')
button15 = AiogramKeyboardButton('15')
button20 = AiogramKeyboardButton('20')

word_count_keyboard = ReplyKeyboardMarkup()
word_count_keyboard.add(button5, button10).add(button15, button20)

##################### time repeat keyboard #############################

time_repeat_keyboard = ReplyKeyboardMarkup()
time_repeat_keyboard.add(*[AiogramKeyboardButton(f'{x:02}:00') for x in range(24)]).add(AiogramKeyboardButton('Не надо '
                                                                                                'мне напоминать'))

##################### categories keyboard #############################

button_1000 = AiogramKeyboardButton('1000 самых употребляемых слов')
button_5000 = AiogramKeyboardButton('5000 самых употребляемых слов')
button_IT = AiogramKeyboardButton('Слова для IT')
button_continue = AiogramKeyboardButton('Продолжить')

categories_keyboard = ReplyKeyboardMarkup()
categories_keyboard_with_next_button = ReplyKeyboardMarkup()
categories_keyboard.add(button_1000).add(button_5000).add(button_IT)
categories_keyboard_with_next_button.add(button_1000).add(button_5000).add(button_IT).add(button_continue)

##################### new words quizlet keyboard #############################

button_known_word = InlineKeyboardButton('Я уже знаю это слово', callback_data='Я уже знаю это слово')
button_unknown_word = InlineKeyboardButton('Начать учить это слово', callback_data='Начать учить это слово')

new_words_quizlet_keyboard = InlineKeyboardMarkup()
new_words_quizlet_keyboard.add(button_known_word).add(button_unknown_word)

button_next = InlineKeyboardButton('Я запомнил, отложить для повтора', callback_data='Я запомнил, отложить для повтора')
button_try = InlineKeyboardButton('Показывать это слово еще', callback_data='Показывать это слово еще')

new_words_quizlet_keyboard2 = InlineKeyboardMarkup()
new_words_quizlet_keyboard2.add(button_next).add(button_try)

##################### repetition words keyboard #############################

button_yes = InlineKeyboardButton('Я вспомнил это слово', callback_data='Я вспомнил это слово')
button_nope = InlineKeyboardButton('Не вспомнил', callback_data='Не вспомнил')

repetition_words_keyboard = InlineKeyboardMarkup()
repetition_words_keyboard.add(button_yes).add(button_nope)

##################### general menu button #############################

buttonGeneralMenuButton = AiogramKeyboardButton('Завершить')

general_menu_button = ReplyKeyboardMarkup(resize_keyboard=True)
general_menu_button.add(buttonGeneralMenuButton)

##################### settings keyboard #############################

words_per_day_button = AiogramKeyboardButton('Изменить количество слов в день')
change_categories_button = AiogramKeyboardButton('Изменить категории')
notification_settings = AiogramKeyboardButton('Настройки уведомлений')
general_menu = AiogramKeyboardButton('Главное меню')

settings_keyboard = ReplyKeyboardMarkup(resize_keyboard=True)
settings_keyboard.add(words_per_day_button).add(change_categories_button).add(notification_settings).add(general_menu)

##################### add user words keyboard #############################

change_translate = InlineAiogramKeyboardButton('Изменить карточку', callback_data='Изменить перевод')
do_not_add_this_card = InlineAiogramKeyboardButton('Не добавлять эту карточку', callback_data='Не добавлять эту карточку')

add_user_words_keyboard = InlineKeyboardMarkup()
add_user_words_keyboard.add(change_translate).add(do_not_add_this_card)
