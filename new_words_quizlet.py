from database import db_select, db_update, db_update_many
from aiogram.utils.markdown import hspoiler
import random

"""Сreating a list of new words to study in the database"""

async def create_words_list(user_name):

    await db_update(f"""TRUNCATE TABLE {user_name}_days_words_list""")

    """Extracting the number of words per day, the number of user categories, 
    and the average number of words to take from each category"""

    total_quantity_of_words_query = await db_select(sql = f"""SELECT total_quantity_of_words 
                                                              FROM {user_name}_info LIMIT 1""")
    total_quantity_of_words = int(total_quantity_of_words_query[0][0])
    quantity_of_categories_query = await db_select(sql = f"""SELECT COUNT(categories) 
                                                             FROM {user_name}_info""")
    quantity_of_categories = int(quantity_of_categories_query [0][0])
    average_quantity_words = int(total_quantity_of_words / quantity_of_categories)

    """Determining the exact number of words to take from each category"""

    if total_quantity_of_words % quantity_of_categories == 0:
        return [average_quantity_words for average_quantity_words in range(quantity_of_categories)]
    else:
        local_quantity_of_words_list = []
        cnt = 1
        for i in range(quantity_of_categories):
            if cnt < quantity_of_categories:
                local_quantity_of_words_list.append(average_quantity_words)
                total_quantity_of_words -= average_quantity_words
                cnt += 1
            else:
                local_quantity_of_words_list.append(total_quantity_of_words)

    """Creating a list of new words for the user and inserting it into the database"""

    categories_list = await create_categories_list(generate_new_word)

    for categories, local_count_of_words in zip(categories_list, local_quantity_of_words_list):
        words = await db_select(f"""SELECT {categories}.words_eng, {categories}.words_rus
                                    FROM {categories}
                                    WHERE {categories}.words_eng NOT IN
                                    (SELECT words_eng FROM {user_name}_words)
                                    ORDER BY RANDOM()
                                    LIMIT {local_count_of_words}""")
        await db_update_many(f"""INSERT INTO {user_name}_days_words_list(words_eng, words_rus) 
                                 VALUES %s""", words)


"""Generating a list with user categories"""

async def create_categories_list(user_name):
    categories_import = await db_select(sql = f"""SELECT categories 
                                                  FROM {user_name}_info 
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

"""Generating text for a quizlet card"""

async def start_quizlet(user_name):

    result = await db_select(f'''SELECT words_eng, words_rus 
                                 FROM {user_name}_days_words_list 
                                 LIMIT 1''')
    spoiler = hspoiler(result[0][1])
    return result[0][0]+'\n'+f'{spoiler}'

"""This function generates one random new word and adds it to the list of words to study"""

async def generate_word(user_name):
    categories = random.choice(await create_categories_list(user_name))
    new_word = await db_select(sql = f'''SELECT words_eng, words_rus FROM {categories} WHERE words_eng NOT IN 
                                        (SELECT words_eng from {self.user_name}_days_words_list
                                         UNION 
                                         SELECT words_eng from {self.user_name}_words) 
                                         ORDER BY RANDOM()
                                         LIMIT 1''')
    await db_update(sql = f"""INSERT INTO {self.user_name}_days_words_list(words_eng, words_rus) 
                              VALUES ('{new_word[0][0]}','{new_word[0][1]}')""")

async def generate_new_word(user_name):

    categories = random.choice(await create_categories_list(user_name))
    new_word = await db_select(sql = f'''SELECT words_eng, words_rus FROM {categories} WHERE words_eng NOT IN 
                                         (SELECT words_eng from {user_name}_days_words_list
                                         UNION 
                                         SELECT words_eng from {user_name}_words) 
                                         ORDER BY RANDOM()
                                         LIMIT 1''')
    await db_update(sql = f"""INSERT INTO {user_name}_days_words_list(words_eng, words_rus) 
                              VALUES ('{new_word[0][0]}','{new_word[0][1]}')""")