from aiogram import Bot
import async_google_trans_new
from database import db_update
import datetime
from config import TOKEN

bot = Bot(TOKEN)

class NewUserWords:

    def __init__(self, message):

        self.user_id = message.from_user.id
        self.user_name = message.from_user.username
        self.text = message.text.lower()


    async def translate_and_add_word(self):

        self.translator = async_google_trans_new.AsyncTranslator()
        self.time_now = datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")

        if not set('абвгдеёжзийклмнопрстуфхцчшщъыьэюя').isdisjoint(self.text.lower()):
            word_eng = await self.translator.translate(str(self.text), 'en')
            await db_update(sql=f"""INSERT INTO {self.user_name}_words
                                  (words_eng, words_rus, words_count, last_repetition_time)
                                  VALUES ('{word_eng.lower()}', '{self.text}', {1},  '{self.time_now}')""")
            await bot.send_message(self.user_id, f"""Слово {self.text} - {word_eng.lower()}, добавлено в ваш список для изучения!""")

        else:
            word_rus = await self.translator.translate(str(self.text), 'ru')

            await db_update(sql=f"""INSERT INTO {self.user_name}_words
                                    (words_eng, words_rus, words_count, last_repetition_time)
                                    VALUES ('{self.text}', '{word_rus.lower()}', {1},  '{self.time_now}')""")
            await bot.send_message(self.user_id,
                                   f"""Слово {self.text} - {word_rus.lower()}, добавлено в ваш список для изучения!""")






