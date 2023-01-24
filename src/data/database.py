from dotenv import dotenv_values
import psycopg2
from psycopg2.extras import execute_values

config = dotenv_values("/home/ubuntu/PycharmProjects/app-for-learning-words/env.txt")

async def db_select(sql):
    with psycopg2.connect(host=config['host'], port=config['port'], database=config['database'], user=config['user'],
                          password=config['password']) as conn:
        with conn.cursor() as cur:
            cur.execute(sql)
            return cur.fetchall()


async def db_update(sql):
    with psycopg2.connect(host=config['host'], port=config['port'], database=config['database'], user=config['user'],
                          password=config['password']) as conn:
        with conn.cursor() as cur:
            cur.execute(sql)
            conn.commit()


async def db_update_many(sql, *data):
    with psycopg2.connect(host=config['host'], port=config['port'], database=config['database'], user=config['user'],
                          password=config['password']) as conn:
        with conn.cursor() as cur:
            execute_values(cur, sql, *data)

#


