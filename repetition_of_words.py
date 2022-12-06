import datetime
from buttons import repetition_words_keyboard, general_menu_button, user_keyboard
from datetime import timedelta
from database import db_select, db_update_many, db_update
from aiogram.utils.markdown import hspoiler


"""This class allows you to implement interval repetition using quizlet cards"""


class RepeatingWords:
    def __init__(self, message, bot, callback: bool):
        self.bot = bot
        self.user_id = message.from_user.id
        self.user_name = message.from_user.username

        if callback:
            self.message_id = message.message.message_id
            self.word_en = message.message.text.split('\n')[0]
            self.word_ru = message.message.text.split('\n')[1]

    """This method generates a list of the user's words that are ready for repetition"""

    async def start_repeating_words(self):

        now = datetime.datetime.now()
        await db_update(f"""TRUNCATE TABLE {self.user_name}_repetition_list""")
        words = await db_select(sql=f"""SELECT words_eng, words_rus, words_count
                                        FROM {self.user_name}_words
                                        WHERE 
                                        last_repetition_time < '{now}' 
                                        AND words_count < 6""")
        if len(words) == 0:
            nearest_time = await db_select(sql=f"""SELECT MIN(last_repetition_time) 
                                                   FROM {self.user_name}_words
                                                   WHERE words_count < 6""")
            time = str(nearest_time[0][0] - now).split(":")
            await self.bot.send_message(self.user_id, f'Для тебя пока нет слов, которые нужно повторить '
                                                      f'прямо сейчас, '
                                                      f'следующие слова для повтора будут доступны через '
                                                      f'{time[0]} ч {time[1]} мин!')
        else:
            await db_update_many(f"""INSERT INTO {self.user_name}_repetition_list
                                     (words_eng, words_rus, words_count) 
                                     VALUES %s""", words)
            await self.bot.send_message(self.user_id, f'Тебе доступно {len(words)} слов для повтора!',
                                        reply_markup=general_menu_button)

    """This method sends the card to be repeated"""

    async def send_repetition_card(self):

        result = await db_select(f'''SELECT words_eng, words_rus 
                                     FROM {self.user_name}_repetition_list 
                                     LIMIT 1''')
        spoiler = hspoiler(result[0][1])
        await self.bot.send_message(self.user_id, result[0][0] + '\n' + f'{spoiler}', parse_mode='HTML',
                                    reply_markup=repetition_words_keyboard)

    """This method checks this is last word in list or not"""

    async def this_is_last_word_in_list(self):

        return len(await db_select(sql=f"""SELECT * FROM {self.user_name}_repetition_list 
                                           WHERE words_eng NOT IN ('{self.word_en}')""")) == 0

    """This method updated information about words such as 
    quantity of repetition and next available time of repetition"""

    async def update_information_of_word(self):

        now = datetime.datetime.now()
        known_word = await db_select(sql=f"""SELECT * FROM {self.user_name}_repetition_list
                                             LIMIT 1""")
        interval = await self._get_repetition_intervals(known_word[0][2])
        await db_update(sql=f"""DELETE FROM {self.user_name}_repetition_list
                                WHERE words_eng = '{known_word[0][0]}';
                                UPDATE {self.user_name}_words
                                SET words_count = {known_word[0][2] + 1},
                                last_repetition_time = '{(now + interval).strftime("%Y-%m-%d %H:%M")}'
                                WHERE words_eng = '{known_word[0][0]}'""")
        await self.bot.delete_message(self.user_id, self.message_id)

    """This method allows you to finish the repetition of words"""

    async def the_end(self):

        now = datetime.datetime.now()
        nearest_time = await db_select(sql=f"""SELECT MIN(last_repetition_time) 
                                               FROM {self.user_name}_words
                                               WHERE words_count < 6""")
        time = str(nearest_time[0][0] - now).split(":")
        await self.bot.delete_message(self.user_id, self.message_id)
        await self.bot.send_message(self.user_id,
                                    f'''На этом пока все, следующие слова для повтора будут доступны\n
                                    через {time[0]} ч {time[1]} мин!''', parse_mode='HTML',
                                    reply_markup=user_keyboard)

    """This staticmethod generates a time interval after which the word will need to be repeated the next time"""

    @staticmethod
    async def _get_repetition_intervals(words_count):
        one_min = timedelta(minutes=1)
        one_hour = timedelta(hours=1)
        five_hour = timedelta(hours=5)
        one_day = timedelta(days=1)
        five_days = timedelta(days=5)
        ten_days = timedelta(days=10)
        repetition_intervals = [one_min, one_hour, five_hour, one_day, five_days, ten_days]
        return repetition_intervals[words_count]
