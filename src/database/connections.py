import asyncio
import asyncpg
import os
from dotenv import load_dotenv

load_dotenv(".env")

class Db:
    def __init__(self, loop=None):
        self.loop = loop or asyncio.get_event_loop()
        self.conn: asyncpg.Connection | None = None
        self.host = os.getenv("DB_HOST")
        self.port = os.getenv("DB_PORT")
        self.database = os.getenv("DB_DATABASE")
        self.user = os.getenv("DB_USER")
        self.password = os.getenv("DB_PASSWORD")

        if not all([self.host, self.port, self.database, self.user, self.password]):
            raise ValueError("Отсутствуют обязательные переменные окружения для подключения к БД.")

    async def connect(self):
        if self.conn is None or self.conn.is_closed():
            try:
                self.conn = await asyncpg.connect(
                    host=self.host,
                    port=self.port,
                    database=self.database,
                    user=self.user,
                    password=self.password
                )
                print("Подключение к базе данных успешно установлено.")
            except Exception as e:
                print(f"Ошибка при подключении к базе данных: {e}")
                raise

    async def close(self):
        if self.conn and not self.conn.is_closed():
            await self.conn.close()
            self.conn = None

    async def execute(self, query: str, parameters: list | tuple | None = None):
        await self.connect()
        assert self.conn is not None
        return await self.conn.fetch(query, *(parameters or []))

    async def execute_one(self, query: str, parameters: list | tuple | None = None):
        await self.connect()
        assert self.conn is not None
        return await self.conn.fetchrow(query, *(parameters or []))

    async def execute_scalar(self, query: str, parameters: list | tuple | None = None):
        await self.connect()
        assert self.conn is not None
        return await self.conn.fetchval(query, *(parameters or []))
