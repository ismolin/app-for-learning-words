from src.database.connections import db_select, db_update, db_update_many
from aiogram.utils.markdown import hspoiler
from src.content.buttons import new_words_quizlet_keyboard, new_words_quizlet_keyboard2, user_keyboard
import random
import datetime


class NewWordsQuizlet:
    """This class allows you to implement the study of not yet known words with the help of quizlet cards"""
    def __init__(self, message, bot, callback: bool):

        self.bot = bot
        self.user_id = message.from_user.id
        self.user_name = message.from_user.username

        if callback:
            self.message_id = message.message.message_id
            self.word_en = message.message.text.split('\n')[0]
            self.word_ru = message.message.text.split('\n')[1]

    async def create_quantity_of_words_from_category_list(self):
        """Creating a list of new words to study in the database"""

        await db_update(f"""TRUNCATE TABLE {self.user_name}_days_words_list""")

        # Extracting the number of words per day, the number of user categories,
        # and the average number of words to take from each category

        total_quantity_of_words_query = await db_select(sql=f"""SELECT total_quantity_of_words                           
                                                                FROM {self.user_name}_info
                                                                WHERE total_quantity_of_words IS NOT NULL""")
        total_quantity_of_words = int(total_quantity_of_words_query[0][0])
        quantity_of_categories_query = await db_select(sql=f"""SELECT COUNT(categories) 
                                                               FROM {self.user_name}_info""")
        quantity_of_categories = int(quantity_of_categories_query[0][0])
        average_quantity_words = int(total_quantity_of_words / quantity_of_categories)

        # Determining the exact number of words to take from each category

        if quantity_of_categories == 1:
            return [total_quantity_of_words]

        else:
            if total_quantity_of_words % quantity_of_categories == 0:
                return [average_quantity_words for average_quantity_words in range(quantity_of_categories)]

            else:
                quantity_of_words_from_category_list = []
                cnt = 1
                for i in range(quantity_of_categories):
                    if cnt < quantity_of_categories:
                        quantity_of_words_from_category_list.append(average_quantity_words)
                        total_quantity_of_words -= average_quantity_words
                        cnt += 1
                    else:
                        quantity_of_words_from_category_list.append(total_quantity_of_words)
                return quantity_of_words_from_category_list

    async def create_new_words_list(self, categories_list: list, quantity_of_words_from_category_list: list):
        """Creating a list of new words for the user and inserting it into the database"""

        for categories, local_count_of_words in zip(categories_list, quantity_of_words_from_category_list):
            words = await db_select(f"""SELECT {categories}.words_eng, {categories}.words_rus
                                        FROM {categories}
                                        WHERE {categories}.words_eng NOT IN
                                        (SELECT words_eng FROM {self.user_name}_words)
                                        ORDER BY RANDOM()
                                        LIMIT {local_count_of_words}""")
            await db_update_many(f"""INSERT INTO {self.user_name}_days_words_list(words_eng, words_rus) 
                                     VALUES %s""", words)

    async def create_categories_list(self):
        """Generating a list with user categories"""

        categories_import = await db_select(sql=f"""SELECT categories 
                                                    FROM {self.user_name}_info 
                                                    WHERE categories not in ('None')""")
        categories_list = []
        for i in categories_import:
            if i[0] == '1000 самых употребляемых слов':
                categories_list.append('thousand_most_used_words')
            elif i[0] == '5000 самых употребляемых слов':
                categories_list.append('five_thousands_most_used_words')
            elif i[0] == 'Слова для IT':
                categories_list.append('most_used_it_words')
        return categories_list

    async def create_quizlet_card(self):
        """Generating text for a quizlet card"""
        result = await db_select(f'''SELECT words_eng, words_rus 
                                     FROM {self.user_name}_days_words_list 
                                     LIMIT 1''')
        spoiler = hspoiler(result[0][1])
        return result[0][0] + '\n' + f'{spoiler}'

    async def generate_new_word(self, categories):
        """This method generates one random new word and adds it to the list of words to study"""

        category = random.choice(categories)
        new_word = await db_select(sql=f'''SELECT words_eng, words_rus FROM {category} WHERE words_eng NOT IN 
                                           (SELECT words_eng from {self.user_name}_days_words_list
                                           UNION 
                                           SELECT words_eng from {self.user_name}_words) 
                                           ORDER BY RANDOM()
                                           LIMIT 1''')
        await db_update(sql=f"""INSERT INTO {self.user_name}_days_words_list(words_eng, words_rus) 
                                VALUES ('{new_word[0][0]}','{new_word[0][1]}')""")

    async def i_know_this_word(self):
        """ This method removes a word from the quizlet list and adds the word to the user's list
                                             with the flag "6" - "known" """

        await db_update(sql=f"""DELETE FROM {self.user_name}_days_words_list 
                                WHERE words_eng = '{self.word_en}';
                                INSERT INTO {self.user_name}_words
                                (words_eng, words_rus, words_count) 
                                VALUES ('{self.word_en}', '{self.word_ru}', {6})""")

    async def start_learning_this_word(self):
        """ This method moves the word to the end of the quizlet list and adds the word to the user's list """

        time_now = datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")

        await db_update(sql=f"""DELETE FROM {self.user_name}_days_words_list 
                                WHERE words_eng = '{self.word_en}';
                                INSERT INTO {self.user_name}_days_words_list(words_eng, words_rus) 
                                VALUES ('{self.word_en}','{self.word_ru}');
                                INSERT INTO {self.user_name}_words 
                                (words_eng, words_rus, words_count, last_repetition_time) 
                                VALUES ('{self.word_en}', '{self.word_ru}', {1},  '{time_now}')""")

    async def send_quizlet_card(self, next_word_card: str, start_quizlet: bool):
        """ This method sends a quizlet card with the required keyboard """

        if start_quizlet:
            await self.bot.send_message(self.user_id, next_word_card, parse_mode='HTML',
                                        reply_markup=new_words_quizlet_keyboard)

        else:
            await self.bot.delete_message(self.user_id, self.message_id)
            word_en = next_word_card.split('\n')[0]
            if len(await db_select(sql=f"""SELECT * FROM {self.user_name}_words 
                                           WHERE words_eng = '{word_en}'""")) > 0:
                await self.bot.send_message(self.user_id, next_word_card, parse_mode='HTML',
                                            reply_markup=new_words_quizlet_keyboard2)

            else:
                await self.bot.send_message(self.user_id, next_word_card, parse_mode='HTML',
                                            reply_markup=new_words_quizlet_keyboard)

    async def delete_from_words_list(self):
        """ This method removes a word from the user's list """

        await db_update(sql=f"""DELETE FROM {self.user_name}_days_words_list 
                                WHERE words_eng = '{self.word_en}'""")

    async def this_is_last_word(self):
        """ This method checks if the word is the last one in the list """

        return len(await db_select(sql=f"""SELECT * FROM {self.user_name}_days_words_list""")) == 1

    async def the_end(self):
        """ This method completes the learning of new words """

        await self.bot.delete_message(self.user_id, self.message_id)
        await self.bot.send_message(self.user_id, 'Так держать! Не забудь зайти повторить слова!', parse_mode='HTML',
                                    reply_markup=user_keyboard)

    async def show_this_word_again(self):
        """ This method moves a word to last position in user's list """

        await db_update(sql=f"""DELETE FROM {self.user_name}_days_words_list 
                                WHERE words_eng = '{self.word_en}';
                                INSERT INTO {self.user_name}_days_words_list(words_eng, words_rus) 
                                VALUES ('{self.word_en}','{self.word_ru}')""")
