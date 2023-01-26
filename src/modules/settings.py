from src.database.connections import db_update, db_select
from src.keyboards.buttons import categories_keyboard_with_next_button, settings_keyboard
import datetime


class UserSettings:

    def __init__(self, message, bot, callback: bool):
        self.bot = bot
        self.user_id = message.from_user.id
        self.user_name = message.from_user.username

        if callback:
            self.message_id = message.message.message_id
            self.text = message.message.text
        else:
            self.text = message.text

    async def user_exist(self):
        return len(await db_select(sql=f"""SELECT user_id 
                                           FROM users 
                                           WHERE user_id = '{self.user_id}'""")) > 0


    async def create_user_tables(self):
        await db_update(sql=f"""INSERT INTO users(user_id, date_of_registration, state) 
                                VALUES ({self.user_id}, '{datetime.datetime.now()}' ,'Start');
                                CREATE TABLE {self.user_name}_info 
                                (categories varchar(255), total_quantity_of_words varchar(255));
                                CREATE TABLE {self.user_name}_words 
                                (words_eng varchar(255), words_rus varchar(255), words_count INT, 
                                last_repetition_time TIMESTAMP);
                                CREATE TABLE {self.user_name}_days_words_list 
                                (words_eng varchar(255), words_rus varchar(255));
                                CREATE TABLE {self.user_name}_repetition_list 
                                (words_eng varchar(255), words_rus varchar(255), words_count INT)""")

    async def this_is_first_settings(self):
        return len(await db_select(sql=f"""SELECT * FROM users 
                                           WHERE state = 'Start' AND user_id = '{self.user_id}' """)) > 0

    async def update_total_quantity_of_words(self):
        await self.bot.send_message(self.user_id, "OK! Хороший выбор!", reply_markup=settings_keyboard)
        current_total_quantity_of_words = await db_select(sql=f"""SELECT total_quantity_of_words
                                                                  FROM {self.user_name}_info 
                                                                  WHERE total_quantity_of_words IS NOT NULL""")
        await db_update(sql=f"""UPDATE {self.user_name}_info 
                                SET total_quantity_of_words = {self.text}
                                WHERE total_quantity_of_words = '{current_total_quantity_of_words[0][0]}'""")

    async def set_time_repetition(self):
        await self.bot.send_message(self.user_id, f"OK, буду напоминать в {self.text}!", reply_markup=settings_keyboard)
        await db_update(sql=f"""UPDATE users 
                                SET time_of_repetition = '{self.text}' 
                                WHERE user_id = '{self.user_id}'""")

    async def update_time_repetition(self):
        await self.bot.send_message(self.user_id, f"OK, буду напоминать в {self.text}!", reply_markup=settings_keyboard)
        await db_update(sql=f"""UPDATE users 
                                SET time_of_repetition = '{self.text}' 
                                WHERE user_id = '{self.user_id}'""")

    async def category_exist(self):
        return len(await db_select(sql=f"""SELECT categories 
                                           FROM {self.user_name}_info 
                                           WHERE categories = '{self.text}'""")) > 0

    async def update_category(self):
        await db_update(sql=f"""INSERT INTO {self.user_name}_info(categories) 
                                VALUES ('{self.text}')""")
        await self.bot.send_message(self.user_id, f"Категория '{self.text}' добавлена!",
                                    reply_markup=categories_keyboard_with_next_button)

    async def set_state(self, state):
        await db_update(sql=f"""UPDATE users 
                                SET state = '{state}' 
                                WHERE user_id = '{self.user_id}'""")

