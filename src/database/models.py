from sqlalchemy import (
    Column, Integer, String, DateTime, Boolean,
    ForeignKey, UniqueConstraint
)
from sqlalchemy.orm import relationship, declarative_base
from datetime import datetime

Base = declarative_base()


class User(Base):
    __tablename__ = "users"
    
    id = Column(Integer, primary_key=True, autoincrement=True)
    telegram_id = Column(String, unique=True, nullable=False)
    username = Column(String)
    created_at = Column(DateTime, default=datetime.utcnow)

    word_progress = relationship("UserWordProgress", back_populates="user")
    sessions = relationship("UserSession", back_populates="user")


class Category(Base):
    __tablename__ = "categories"
    
    id = Column(Integer, primary_key=True)
    name = Column(String, unique=True, nullable=False)

    words = relationship("Word", back_populates="category")


class Word(Base):
    __tablename__ = "words"

    id = Column(Integer, primary_key=True, autoincrement=True)
    eng = Column(String, unique=True, nullable=False)
    rus = Column(String, nullable=False)
    level = Column(String)  # A1, B1, C1... или null

    category_id = Column(Integer, ForeignKey("categories.id"), nullable=True)
    category = relationship("Category", back_populates="words")

    is_user_created = Column(Boolean, default=False)
    created_by_user_id = Column(Integer, ForeignKey("users.id"), nullable=True)
    created_by_user = relationship("User", backref="created_words")

    progress = relationship("UserWordProgress", back_populates="word")


class UserWordProgress(Base):
    __tablename__ = "user_word_progress"

    id = Column(Integer, primary_key=True, autoincrement=True)
    user_id = Column(Integer, ForeignKey("users.id"), index=True)
    word_id = Column(Integer, ForeignKey("words.id"), index=True)

    repetitions = Column(Integer, default=0)
    last_repetition = Column(DateTime)
    next_repetition_due = Column(DateTime)
    is_known = Column(Boolean, default=False)

    __table_args__ = (
        UniqueConstraint("user_id", "word_id", name="uq_user_word"),
    )

    user = relationship("User", back_populates="word_progress")
    word = relationship("Word", back_populates="progress")


class UserSession(Base):
    __tablename__ = "user_sessions"

    id = Column(Integer, primary_key=True, autoincrement=True)
    user_id = Column(Integer, ForeignKey("users.id"))
    started_at = Column(DateTime, default=datetime.utcnow)
    ended_at = Column(DateTime)

    user = relationship("User", back_populates="sessions")
