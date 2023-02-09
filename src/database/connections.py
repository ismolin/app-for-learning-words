import asyncio
import asyncpg
import os
from dotenv import load_dotenv

load_dotenv('env.txt')


class PostgresAsync:
    def __init__(self, loop=None):
        self.loop = loop or asyncio.get_event_loop()
        self.conn = None
        self.host = os.getenv("DB_HOST")
        self.port = os.getenv("DB_PORT")
        self.database = os.getenv("DB_DATABASE")
        self.user = os.getenv("DB_USER")
        self.password = os.getenv("DB_PASSWORD")

    async def connect(self):
        self.conn = await asyncpg.connect(
            host=self.host,
            port=self.port,
            database=self.database,
            user=self.user,
            password=self.password
        )

    async def close(self):
        await self.conn.close()

    async def execute(self, query, parameters=None):
        if not self.conn:
            await self.connect()
        result = await self.conn.fetch(query, *parameters)
        return result
