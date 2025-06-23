from dataclasses import dataclass
from dotenv import dotenv_values


@dataclass
class DBConfig:
    host: str
    port: int
    user: str
    password: str
    database: str


@dataclass
class Config:
    token: str
    db: DBConfig


def load_config(path: str = ".env") -> Config:
    env = dotenv_values(path)

    token = env.get("TOKEN")
    if not token:
        raise ValueError("TOKEN not found in .env")

    db_config = DBConfig(
        host=env.get("DB_HOST") or "localhost",
        port=int(env.get("DB_PORT") or 5432),
        user=env.get("DB_USER") or "user",
        password=env.get("DB_PASSWORD") or "",
        database=env.get("DB_DATABASE") or "database",
    )

    return Config(token=token, db=db_config)