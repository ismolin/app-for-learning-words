import asyncio
import asyncpg

async def run():
    conn = await asyncpg.connect(user='user', password='password',
                                 database='database', host='127.0.0.1')
    values = await conn.fetch(
        'SELECT * FROM mytable WHERE id = $1',
        10,
    )
    await conn.close()

loop = asyncio.get_event_loop()
loop.run_until_complete(run())


# from dotenv import dotenv_values
# import psycopg2
# from psycopg2.extras import execute_values
#
# config = dotenv_values("env.txt")
#
#
# async def db_select(sql):
#     with psycopg2.connect(host=config['host'], port=config['port'], database=config['database'], user=config['user'],
#                           password=config['password']) as conn:
#         with conn.cursor() as cur:
#             cur.execute(sql)
#             return cur.fetchall()
#
#
# async def db_update(sql):
#     with psycopg2.connect(host=config['host'], port=config['port'], database=config['database'], user=config['user'],
#                           password=config['password']) as conn:
#         with conn.cursor() as cur:
#             cur.execute(sql)
#             conn.commit()
#
#
# async def db_update_many(sql, *data):
#     with psycopg2.connect(host=config['host'], port=config['port'], database=config['database'], user=config['user'],
#                           password=config['password']) as conn:
#         with conn.cursor() as cur:
#             execute_values(cur, sql, *data)

#
