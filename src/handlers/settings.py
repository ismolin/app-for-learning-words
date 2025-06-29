from aiogram import Router, F
from aiogram.types import Message
from aiogram.fsm.context import FSMContext

from src.states.user_setup import UserSetup
from src.database.session import get_session
from src.services.user_service import UserService
from src.content.keyboards import (
    word_count_keyboard,
    time_repeat_keyboard,
    categories_keyboard,
    categories_keyboard_with_next_button,
    user_keyboard,
)
from src.content.texts import (
    timing_message,
    selecting_categories_message,
    start_work_with_bot_message,
    category_already_exist_message,
)

fsm_router = Router()

@fsm_router.message(F.text == "Настройки")
async def start_setup(message: Message, state: FSMContext):
    await state.set_state(UserSetup.choosing_word_count)
    await message.answer("Сколько слов в день ты хочешь учить?", reply_markup=word_count_keyboard)

@fsm_router.message(UserSetup.choosing_word_count)
async def choose_word_count(message: Message, state: FSMContext):
    if not message.text.isdigit():
        await message.answer("Пожалуйста, введи число.")
        return

    async for session in get_session():
        service = UserService(session, str(message.from_user.id), message.from_user.username)
        user = await service.get_or_create_user()
        await service.update_words_per_day(user, int(message.text))

    await state.set_state(UserSetup.choosing_time)
    await message.answer(timing_message, reply_markup=time_repeat_keyboard)

@fsm_router.message(UserSetup.choosing_time)
async def choose_time(message: Message, state: FSMContext):
    async for session in get_session():
        service = UserService(session, str(message.from_user.id), message.from_user.username)
        user = await service.get_or_create_user()
        await service.update_reminder_time(user, message.text)

    await state.set_state(UserSetup.choosing_categories)
    await message.answer(selecting_categories_message, reply_markup=categories_keyboard)

@fsm_router.message(UserSetup.choosing_categories)
async def choose_categories(message: Message, state: FSMContext):
    async for session in get_session():
        service = UserService(session, str(message.from_user.id), message.from_user.username)
        user = await service.get_or_create_user()

        if message.text == "Продолжить":
            await service.set_user_state(user, "Work")
            await state.clear()
            await message.answer(start_work_with_bot_message, reply_markup=user_keyboard)
            return

        result = await service.add_category(user, message.text)
        if result == "exists":
            await message.answer(category_already_exist_message.format(message.text), reply_markup=categories_keyboard_with_next_button)
        else:
            await message.answer(f"Категория '{message.text}' добавлена!", reply_markup=categories_keyboard_with_next_button)
