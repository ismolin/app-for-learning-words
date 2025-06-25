from aiogram import Router, F
from aiogram.types import Message
from aiogram.fsm.context import FSMContext

from src.content.keyboards import (
    settings_keyboard,
    word_count_keyboard,
    user_keyboard,
    categories_keyboard,
    time_repeat_keyboard,
)

router = Router(name="settings-router")

SETTINGS_ACTIONS = {
    'Настройки': (
        'Давай мы с тобой тут все настроим...', settings_keyboard
    ),
    'Изменить количество слов в день': (
        'Выбери количество слов в день, которое бы ты хотел изучать:', word_count_keyboard
    ),
    'Главное меню': (
        'Давай уже учиться...', user_keyboard
    ),
    'Завершить': (
        'Окей, заходи потом еще!', user_keyboard
    ),
    'Изменить категории': (
        'Выбери категории слов, которые бы ты хотел изучать:', categories_keyboard
    ),
    'Настройки уведомлений': (
        'Выбери время (МСК) в которое тебе будет удобно заниматься:', time_repeat_keyboard
    ),
}

