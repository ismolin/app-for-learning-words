from src.database.connections import db
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

        await db.execute_void(f"""TRUNCATE TABLE {self.user_name}_days_words_list""")

        total_quantity_of_words_query = await db.execute_one(
            f"""SELECT total_quantity_of_words FROM {self.user_name}_info WHERE total_quantity_of_words IS NOT NULL"""
        )
        if not total_quantity_of_words_query:
            raise ValueError(f"[ERROR] total_quantity_of_words not found for user {self.user_name}")

        total_quantity_of_words = int(total_quantity_of_words_query[0])

        categories_query = await db.execute_many(
            f"""SELECT categories FROM {self.user_name}_info WHERE categories IS NOT NULL AND categories != 'None'"""
        )

        if not categories_query:
            raise ValueError(f"[ERROR] No categories found for user {self.user_name}")

        quantity_of_categories = len(categories_query)

        average_quantity_words = total_quantity_of_words // quantity_of_categories

        if quantity_of_categories == 1:
            return [total_quantity_of_words]
        elif total_quantity_of_words % quantity_of_categories == 0:
            return [average_quantity_words] * quantity_of_categories
        else:
            result = [average_quantity_words] * (quantity_of_categories - 1)
            result.append(total_quantity_of_words - average_quantity_words * (quantity_of_categories - 1))
            return result

    async def create_categories_list(self):
        """Generating a list with user categories"""
        records = await db.execute_many(
    f"""SELECT categories FROM {self.user_name}_info WHERE categories IS NOT NULL AND categories != 'None'"""
)

        categories_list = []

        for record in records:
            category = record[0]
            if category == '1000 самых употребляемых слов':
                categories_list.append('thousand_most_used_words')
            elif category == '5000 самых употребляемых слов':
                categories_list.append('five_thousands_most_used_words')
            elif category == 'Слова для IT':
                categories_list.append('most_used_it_words')

        return categories_list

    async def create_new_words_list(self, categories_list: list, quantity_list: list):
        """Creating a list of new words for the user and inserting it into the database"""
        for category, count in zip(categories_list, quantity_list):
            words = await db.execute_many(
                f"""SELECT words_eng, words_rus FROM {category}
                    WHERE words_eng NOT IN (
                        SELECT words_eng FROM {self.user_name}_words
                    )
                    ORDER BY RANDOM()
                    LIMIT {count}"""
            )
            if words:
                await db.execute_many(
                    f"""INSERT INTO {self.user_name}_days_words_list(words_eng, words_rus) VALUES ($1, $2)""",
                    words
                )

    async def create_quizlet_card(self):
        """Generating text for a quizlet card"""
        result = await db.execute_one(
            f'''SELECT words_eng, words_rus FROM {self.user_name}_days_words_list LIMIT 1'''
        )

        if not result:
            return None

        eng_word, rus_translation = result
        return f'{eng_word}\n||{rus_translation}||'

    async def generate_new_word(self, categories):
        """Generates one random new word and adds it to the list"""
        category = random.choice(categories)
        new_word = await db.execute_one(
            f'''SELECT words_eng, words_rus FROM {category}
                WHERE words_eng NOT IN (
                    SELECT words_eng FROM {self.user_name}_days_words_list
                    UNION
                    SELECT words_eng FROM {self.user_name}_words
                )
                ORDER BY RANDOM()
                LIMIT 1'''
        )
        if new_word:
            await db.execute_void(
                f"""INSERT INTO {self.user_name}_days_words_list(words_eng, words_rus)
                    VALUES ($1, $2)""",
                new_word
            )

    async def i_know_this_word(self):
        """Mark the word as known and move it to the known words list"""
        await db.execute_void(
            f"""DELETE FROM {self.user_name}_days_words_list WHERE words_eng = $1;
                INSERT INTO {self.user_name}_words(words_eng, words_rus, words_count)
                VALUES ($1, $2, 6)""",
            (self.word_en, self.word_ru)
        )

    async def start_learning_this_word(self):
        """Move word to the end of list and mark as started learning"""
        time_now = datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")
        await db.execute_void(
            f"""DELETE FROM {self.user_name}_days_words_list WHERE words_eng = $1;
                INSERT INTO {self.user_name}_days_words_list(words_eng, words_rus)
                VALUES ($1, $2);
                INSERT INTO {self.user_name}_words(words_eng, words_rus, words_count, last_repetition_time)
                VALUES ($1, $2, 1, $3)""",
            (self.word_en, self.word_ru, time_now)
        )

    async def send_quizlet_card(self, next_word_card: str, start_quizlet: bool):
        """Send the quizlet card with appropriate keyboard"""
        if start_quizlet:
            await self.bot.send_message(
                self.user_id, next_word_card, parse_mode='HTML',
                reply_markup=new_words_quizlet_keyboard
            )
        else:
            await self.bot.delete_message(self.user_id, self.message_id)
            word_en = next_word_card.split('\n')[0]
            existing = await db.execute_one(
                f"""SELECT 1 FROM {self.user_name}_words WHERE words_eng = $1 LIMIT 1""",
                (word_en,)
            )
            keyboard = new_words_quizlet_keyboard2 if existing else new_words_quizlet_keyboard

            await self.bot.send_message(
                self.user_id, next_word_card, parse_mode='HTML',
                reply_markup=keyboard
            )

    async def delete_from_words_list(self):
        """Remove a word from the list"""
        await db.execute_void(
            f"""DELETE FROM {self.user_name}_days_words_list WHERE words_eng = $1""",
            (self.word_en,)
        )

    async def this_is_last_word(self):
        """Check if this is the last word"""
        result = await db.execute_many(
            f"""SELECT 1 FROM {self.user_name}_days_words_list LIMIT 2"""
        )
        return len(result) == 1

    async def the_end(self):
        """End of today's word session"""
        await self.bot.delete_message(self.user_id, self.message_id)
        await self.bot.send_message(
            self.user_id,
            'Так держать! Не забудь зайти повторить слова!',
            parse_mode='HTML',
            reply_markup=user_keyboard
        )

    async def show_this_word_again(self):
        """Move current word to end of the list"""
        await db.execute_void(
            f"""DELETE FROM {self.user_name}_days_words_list WHERE words_eng = $1;
                INSERT INTO {self.user_name}_days_words_list(words_eng, words_rus)
                VALUES ($1, $2)""",
            (self.word_en, self.word_ru)
        )
