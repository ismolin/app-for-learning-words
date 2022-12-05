from aiogram.types import ReplyKeyboardMarkup, KeyboardButton, InlineKeyboardButton, InlineKeyboardMarkup

new_words = KeyboardButton('Учить новые слова')
repeat_words = KeyboardButton('Повторить слова')
settings = KeyboardButton('Настройки')

user_keyboard = ReplyKeyboardMarkup(resize_keyboard=True)
user_keyboard.add(new_words ).add(repeat_words)

########################################################################

button3 = KeyboardButton('5')
button4 = KeyboardButton('10')
button5 = KeyboardButton('15')
button6 = KeyboardButton('20')

word_count_keyboard = ReplyKeyboardMarkup()
word_count_keyboard.add(button3,button4).add(button5, button6)

########################################################################

time_repeat_keyboard = ReplyKeyboardMarkup()
time_repeat_keyboard.add(*[KeyboardButton(f'{x:02}:00') for x in range (24)]).add(KeyboardButton('Не надо мне напоминать'))

########################################################################

button32 = KeyboardButton('1000 самых употребляемых слов')
button33 = KeyboardButton('5000 самых употребляемых слов')
button34 = KeyboardButton('Слова для IT')
button35 = KeyboardButton('Продолжить')


categories_keyboard = ReplyKeyboardMarkup()
categories_keyboard_with_next_button = ReplyKeyboardMarkup()
categories_keyboard.add(button32).add(button33).add(button34)
categories_keyboard_with_next_button.add(button32).add(button33).add(button34).add(button35)

########################################################################

button36 = InlineKeyboardButton('Я уже знаю это слово', callback_data='Я уже знаю это слово')
button37 = InlineKeyboardButton('Начать учить это слово', callback_data='Начать учить это слово')

new_words_quizlet_keyboard = InlineKeyboardMarkup()
new_words_quizlet_keyboard.add(button36).add(button37)

########################################################################

button38 = InlineKeyboardButton('Я запомнил, отложить для повтора', callback_data='Я запомнил, отложить для повтора')
button39 = InlineKeyboardButton('Показывать это слово еще', callback_data='Показывать это слово еще')

new_words_quizlet_keyboard2 = InlineKeyboardMarkup()
new_words_quizlet_keyboard2.add(button38).add(button39)

########################################################################

button40= InlineKeyboardButton('Я вспомнил это слово', callback_data='Я вспомнил это слово')
button41 = InlineKeyboardButton('Не вспомнил', callback_data='Не вспомнил')

repetition_words_keyboard = InlineKeyboardMarkup()
repetition_words_keyboard.add(button40).add(button41)


########################################################################


buttonGeneralMenuButton = KeyboardButton('Завершить')

general_menu_button= ReplyKeyboardMarkup(resize_keyboard=True)
general_menu_button.add(buttonGeneralMenuButton)