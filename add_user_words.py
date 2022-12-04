import async_google_trans_new
from database import db_update
import datetime


class NewUserWords:

    def __init__(self, message):

        self.user_id = message.from_user.id
        self.user_name = message.from_user.username
        self.text = message.text.lower()


    async def translate_word(self):

        self.translator = async_google_trans_new.AsyncTranslator()
        self.time_now = datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")

        if not set('абвгдеёжзийклмнопрстуфхцчшщъыьэюя').isdisjoint(self.text.lower()):
            rus_word = await self.translator.translate(self.text, 'en')
            return [self.text, rus_word]

        else:
            eng_word = await self.translator.translate(self.text, 'ru')
            return [eng_word, self.text]


    async def add_word_to_words_list(self, bot, *translate_word):

        self.word_eng = translate_word[0].lower()
        self.word_rus = translate_word[1].lower()

        self.time_now = datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")

        await db_update(sql=f"""INSERT INTO {self.user_name}_words
                                (words_eng, words_rus, words_count, last_repetition_time)
                                VALUES ('{self.word_eng}', '{self.word_rus}', {1},  '{self.time_now}')""")
        await bot.send_message(self.user_id,
                                   f"""Слово {self.word_rus} - {self.word_eng}, добавлено в ваш список для изучения!""")
