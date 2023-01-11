import async_google_trans_new
from src.data.database import db_update
import datetime
from src.keyboards.buttons import add_user_words_keyboard


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
            rus_word = await translator.translate(self.text, 'en')
            return [self.text, rus_word]

        else:
            eng_word = await translator.translate(self.text, 'ru')
            return [eng_word, self.text]

    async def add_word_to_words_list(self, *translate_word):

        word_eng = translate_word[0].lower()
        word_rus = translate_word[1].lower()
        time_now = datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")

        await db_update(sql=f"""INSERT INTO {self.user_name}_words
                                (words_eng, words_rus, words_count, last_repetition_time)
                                VALUES ('{word_eng}', '{word_rus}', {1},  '{time_now}')""")
        await self.bot.send_message(self.user_id, f"""Карточка {word_rus} - {word_eng}, 
                                    добавлена в ваш список для изучения!""",
                                    reply_markup=add_user_words_keyboard)

    async def request_new_translation(self):

        await self.bot.delete_message(self.user_id, self.message_id)
        await self.bot.send_message(self.user_id, "Отправь нужный перевод одним сообщением")
        await db_update(sql=f"""UPDATE users
                                SET state = 'change_translation'
                                WHERE user_id = '{self.user_id}'""")

    async def change_translation(self):

        if not set('абвгдеёжзийклмнопрстуфхцчшщъыьэюя').isdisjoint(self.text):
            await db_update(sql=f"""UPDATE {self.user_name}_words
                                    SET words_eng = '{self.text}'
                                    WHERE """)
            await self.bot.send_message(self.user_id, "Перевод изменен!")
        else:
            await db_update(sql=f"""UPDATE {self.user_name}_words
                                    SET words_rus = '{self.text}'
                                    WHERE """)
            await self.bot.send_message(self.user_id, "Перевод изменен!")

    async def do_not_add_this_word(self):

        await db_update(sql=f"""DELETE FROM {self.user_name}_words
                                WHERE word_eng = {self.text}""")
        await self.bot.delete_message(self.user_id, self.message_id)
        await self.bot.send_message(self.user_id, "Отправь нужный перевод одним сообщением")









