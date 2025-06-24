from sqlalchemy.ext.asyncio import create_async_engine, AsyncSession, async_sessionmaker
from sqlalchemy.orm import declarative_base
from typing import AsyncGenerator
from config import DBConfig

Base = declarative_base()

async_session_factory: async_sessionmaker[AsyncSession] | None = None


def create_database_url(config: DBConfig) -> str:
    return f"postgresql+asyncpg://{config.user}:{config.password}@{config.host}:{config.port}/{config.database}"


def init_engine_and_session(config: DBConfig):

    global async_session_factory

    database_url = create_database_url(config)
    engine = create_async_engine(database_url, echo=False)

    async_session_factory = async_sessionmaker(
        bind=engine,
        expire_on_commit=False,
        class_=AsyncSession
    )


async def get_session() -> AsyncGenerator[AsyncSession, None]:

    if async_session_factory is None:
        raise RuntimeError("Database not initialized. Call init_engine_and_session first.")
    async with async_session_factory() as session:
        yield session
