from aiogram.fsm.state import StatesGroup, State

class UserStates(StatesGroup):
    Start = State()
    Work = State()
    ChangeCard = State()
    choosing_word_count = State()
    choosing_time = State()
    choosing_categories = State()