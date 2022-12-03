from config import host, user, password, database
import psycopg2
from psycopg2.extras import execute_values

async def db_select(sql):
    with psycopg2.connect(host=host, database=database, user=user, password=password) as conn:
        with conn.cursor() as cur:
            cur.execute(sql)
            return cur.fetchall()

async def db_update(sql):
    with psycopg2.connect(host=host, database=database, user=user, password=password) as conn:
        with conn.cursor() as cur:
            cur.execute(sql)
            conn.commit()

async def db_update_many(sql, *data):
    with psycopg2.connect(host=host, database=database, user=user, password=password) as conn:
        with conn.cursor() as cur:
            execute_values(cur, sql, *data)