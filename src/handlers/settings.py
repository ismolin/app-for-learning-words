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

@router.message(F.text.in_(SETTINGS_ACTIONS.keys()))
async def settings_handler(message: Message, state: FSMContext):
    action_text = message.text
    if action_text is None:
        raise ValueError("action_text is None")

    response_text, reply_markup = SETTINGS_ACTIONS[action_text]

    if action_text == 'Завершить':
        bot = message.bot
        if bot:
            try:
                await bot.delete_message(message.chat.id, message.message_id - 1)
            except Exception:
                pass  

    await message.answer(response_text, reply_markup=reply_markup)