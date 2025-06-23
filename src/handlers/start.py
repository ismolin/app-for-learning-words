from aiogram import F, Router
from aiogram.types import Message
from aiogram.fsm.context import FSMContext

from src.modules.settings import UserSettings
from src.content.messages import (
    come_back_message, start_message, quantity_selection_of_words_message
)
from src.content.keyboards import user_keyboard, word_count_keyboard
from src.modules.user_states import UserStates

router = Router()


@router.message(F.text == "/start")
async def start_command(message: Message, state: FSMContext):
    user_settings = UserSettings(message, message.bot, callback=False)

    if await user_settings.user_exist():
        await message.answer(come_back_message, reply_markup=user_keyboard)
        await state.set_state(UserStates.Work)
    else:
        await user_settings.create_user()
        await state.set_state(UserStates.Start)
        await message.answer(start_message)
        await message.answer(quantity_selection_of_words_message, reply_markup=word_count_keyboard)
