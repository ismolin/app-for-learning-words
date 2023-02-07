import async_google_trans_new
from src.database.connections import db_update, db_select
import datetime
from src.content.buttons import add_user_words_keyboard


class NewUserWords:
    def __init__(self, message, bot, callback: bool):
        self.bot = bot
        self.user_id = message.from_user.id
        self.user_name = message.from_user.username

        if callback:
            self.message_id = message.message.message_id
            self.text = message.message.text
        else:
            self.text = message.text

    async def translate_word(self):

        translator = async_google_trans_new.AsyncTranslator()

        if not set('абвгдеёжзийклмнопрстуфхцчшщъыьэюя').isdisjoint(self.text):
            eng_word = await translator.translate(self.text, 'en')
            return [eng_word, self.text]

        else:
            rus_word = await translator.translate(self.text, 'ru')
            return [self.text, rus_word]

    async def add_word_to_words_list(self, *translate_word):

        word_eng = translate_word[0].lower()
        word_rus = translate_word[1].lower()
        time_now = datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")

        await db_update(sql=f"""INSERT INTO {self.user_name}_words
                                (words_eng, words_rus, words_count, last_repetition_time)
                                VALUES ('{word_eng}', '{word_rus}', {1},  '{time_now}')""")
        await self.bot.send_message(self.user_id, f"""Карточка {word_eng} - {word_rus}, добавлена в твой список для изучения!""",
                                    reply_markup=add_user_words_keyboard)

    async def request_new_translation(self):

        await self.bot.send_message(self.user_id, '''Отправь нужный перевод одним сообщением в формате: 
’ENG WORD'-'RUSSIAN WORD', например 'hello-привет' без пробелов и кавычек!''')
        await db_update(sql=f"""UPDATE users
                                SET state = 'change_card'
                                WHERE user_id = '{self.user_id}'""")

    async def change_translation(self):

        flag_of_last_card = await db_select(sql=f"""SELECT MAX(last_repetition_time) FROM {self.user_name}_words""")
        await db_update(sql=f"""UPDATE {self.user_name}_words
                                SET words_eng = '{self.text.split('-')[0].lower()}', 
                                words_rus = '{self.text.split('-')[1].lower()}'
                                WHERE last_repetition_time = '{flag_of_last_card[0][0]}'""")
        await self.bot.send_message(self.user_id,
                                    f"""Карточка {self.text.split('-')[0].lower()} - {self.text.split('-')[1].lower()}, добавлена!""")
        await self.update_state(user_id=self.user_id, state='Work')

    async def do_not_add_this_word(self):
        await db_update(sql=f"""DELETE FROM {self.user_name}_words
                                WHERE words_eng = '{self.text.split(' ')[1]}'""")
        await self.bot.delete_message(self.user_id, self.message_id)

    async def state_is_change_card(self):
        return len(await db_select(sql=f"""SELECT * FROM users 
                                           WHERE state = 'change_card' AND user_id = '{self.user_id}' """)) > 0
    @ staticmethod
    async def update_state(user_id, state):
        await db_update(sql=f"""UPDATE users 
                                SET state = '{state}' 
                                WHERE user_id = '{user_id}'""")
