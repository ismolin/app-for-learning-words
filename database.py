from dotenv import dotenv_values
import psycopg2
from psycopg2.extras import execute_values

config = dotenv_values(".env")
#
# conn = psycopg2.connect(
#     host="176.57.217.176",
#     database="default_db",
#     user="gen_user",
#     password="mama8909"
# )
#
# def db_select(sql):
#     with conn.cursor() as cur:
#         cur.execute(sql)
#         return cur.fetchall()
#
# db_select("SHOW MY DATABASES")
#
#
# async def db_update(sql):
#     with conn.cursor() as cur:
#         cur.execute(sql)
#         conn.commit()
#
#
# async def db_update_many(sql, *data):
#     with conn.cursor() as cur:
#         execute_values(cur, sql, *data)
#


async def db_select(sql):
    with psycopg2.connect(host=config['host'], database=config['database'], user=config['user'],
                          password=config['password']) as conn:
        with conn.cursor() as cur:
            cur.execute(sql)
            return cur.fetchall()


async def db_update(sql):
    with psycopg2.connect(host=config['host'], database=config['database'], user=config['user'],
                          password=config['password']) as conn:
        with conn.cursor() as cur:
            cur.execute(sql)
            conn.commit()


async def db_update_many(sql, *data):
    with psycopg2.connect(host=config['host'], database=config['database'], user=config['user'],
                          password=config['password']) as conn:
        with conn.cursor() as cur:
            execute_values(cur, sql, *data)


