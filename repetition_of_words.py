import datetime
from buttons import repetition_words_keyboard, general_menu_button, user_keyboard
from datetime import timedelta
from database import db_select, db_update_many, db_update
from aiogram.utils.markdown import hspoiler


async def start_repeating_words(message, bot):
    now = datetime.datetime.now()
    await db_update(f"""TRUNCATE TABLE {message.from_user.username}_repetition_list""")
    words = await db_select(sql=f"""SELECT words_eng, words_rus, words_count
                                      FROM {message.from_user.username}_words
                                      WHERE 
                                      last_repetition_time < '{now}' 
                                      AND words_count < 6""")
    if len(words) == 0:
        nearest_time = await db_select(sql=f"""SELECT MIN(last_repetition_time) 
                                               FROM {message.from_user.username}_words
                                               WHERE words_count < 6""")
        print(nearest_time[0][0])
        time = str(nearest_time[0][0] - now).split(":")
        await bot.send_message(message.from_user.id, f'Для тебя пока нет слов, которые нужно повторить прямо сейчас, '
                                                     f'следующие слова для повтора будут доступны через '
                                                     f'{time[0]} ч {time[1]} мин!')

    else:
        await db_update_many(f"""INSERT INTO {message.from_user.username}_repetition_list
                                 (words_eng, words_rus, words_count) 
                                 VALUES %s""", words)
        await bot.send_message(message.from_user.id, f'Тебе доступно {len(words)} слов для повтора!',
                               reply_markup=general_menu_button)

        result = await db_select(f'''SELECT words_eng, words_rus 
                                     FROM {message.from_user.username}_repetition_list 
                                     LIMIT 1''')
        spoiler = hspoiler(result[0][1])
        await bot.send_message(message.from_user.id, result[0][0] + '\n' + f'{spoiler}', parse_mode='HTML',
                               reply_markup=repetition_words_keyboard)


async def repetition_words(message, bot):
    now = datetime.datetime.now()
    if message.data == 'Я вспомнил это слово':
        woerds_eng = message.message.text.split('\n')[0]
        if len(await db_select(
                sql=f"""SELECT * FROM {message.from_user.username}_repetition_list 
                        WHERE words_eng NOT IN ('{woerds_eng}')""")) == 0:
            known_word = await db_select(sql=f"""SELECT * FROM {message.from_user.username}_repetition_list
                                                               LIMIT 1""")

            interval = await get_repetition_intervals(known_word[0][2])

            await db_update(sql=f"""DELETE FROM {message.from_user.username}_repetition_list
                                    WHERE words_eng = '{known_word[0][0]}';
                                    UPDATE {message.from_user.username}_words
                                    SET words_count = {known_word[0][2] + 1},
                                            last_repetition_time = '{(now + interval).strftime("%Y-%m-%d %H:%M")}'
                                    WHERE words_eng = '{known_word[0][0]}'""")
            nearest_time = await db_select(sql=f"""SELECT MIN(last_repetition_time) 
                                                   FROM {message.from_user.username}_words
                                                   WHERE words_count < 6""")
            time = str(nearest_time[0][0] - now).split(":")
            await bot.delete_message(message.from_user.id, message.message.message_id)
            await bot.send_message(message.from_user.id,
                                   f'''На этом пока все, следующие слова для повтора будут доступны\n
                                   через {time[0]} ч {time[1]} мин!''', parse_mode='HTML',
                                   reply_markup=user_keyboard)

        else:
            known_word = await db_select(sql=f"""SELECT * FROM {message.from_user.username}_repetition_list
                                                   LIMIT 1""")
            interval = await get_repetition_intervals(known_word[0][2])

            await db_update(sql=f"""DELETE FROM {message.from_user.username}_repetition_list
                                    WHERE words_eng = '{known_word[0][0]}';
                                    UPDATE {message.from_user.username}_words
                                    SET words_count = {known_word[0][2] + 1},
                                    last_repetition_time = '{(now + interval).strftime("%Y-%m-%d %H:%M")}'
                                    WHERE words_eng = '{known_word[0][0]}'""")
            await bot.delete_message(message.from_user.id, message.message.message_id)
            result = await db_select(f'''SELECT words_eng, words_rus 
                                         FROM {message.from_user.username}_repetition_list 
                                         LIMIT 1''')

            spoiler = hspoiler(result[0][1])
            await bot.send_message(message.from_user.id, result[0][0] + '\n' + f'{spoiler}', parse_mode='HTML',
                                   reply_markup=repetition_words_keyboard)

    else:
        unknown_word = await db_select(sql=f"""SELECT * FROM {message.from_user.username}_repetition_list
                                               LIMIT 1""")

        await db_update(sql=f"""DELETE FROM {message.from_user.username}_repetition_list
                                WHERE words_eng = '{unknown_word[0][0]}';
                                INSERT INTO {message.from_user.username}_repetition_list
                                (words_eng, words_rus, words_count) 
                                VALUES ('{unknown_word[0][0]}', '{unknown_word[0][1]}', {unknown_word[0][2]})""")
        await bot.delete_message(message.from_user.id, message.message.message_id)
        result = await db_select(f'''SELECT words_eng, words_rus 
                                             FROM {message.from_user.username}_repetition_list 
                                             LIMIT 1''')
        spoiler = hspoiler(result[0][1])
        await bot.send_message(message.from_user.id, result[0][0] + '\n' + f'{spoiler}', parse_mode='HTML',
                               reply_markup=repetition_words_keyboard)


async def get_repetition_intervals(words_count):
    one_min = timedelta(minutes=1)
    one_hour = timedelta(hours=1)
    five_hour = timedelta(hours=5)
    one_day = timedelta(days=1)
    five_days = timedelta(days=5)
    ten_days = timedelta(days=10)
    repetition_intervals = [one_min, one_hour, five_hour, one_day, five_days, ten_days]
    return repetition_intervals[words_count]
