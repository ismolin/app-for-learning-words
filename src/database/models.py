from sqlalchemy import Column, Integer, String, DateTime, ForeignKey
from sqlalchemy.orm import relationship
from .connections import Base

class UserInfo(Base):
    __tablename__ = "user_info"
    username = Column(String, primary_key=True)
    total_quantity_of_words = Column(Integer, nullable=False)
    categories = Column(String, nullable=False)  # строка категорий через запятую либо JSON

    days_words = relationship("UserDayWord", back_populates="user")
    known_words = relationship("UserWord", back_populates="user")

class UserDayWord(Base):
    __tablename__ = "user_days_words_list"
    id = Column(Integer, primary_key=True, autoincrement=True)
    username = Column(String, ForeignKey("user_info.username"), index=True)
    words_eng = Column(String, nullable=False)
    words_rus = Column(String, nullable=False)
    user = relationship("UserInfo", back_populates="days_words")

class UserWord(Base):
    __tablename__ = "user_words"
    id = Column(Integer, primary_key=True, autoincrement=True)
    username = Column(String, ForeignKey("user_info.username"), index=True)
    words_eng = Column(String, nullable=False)
    words_rus = Column(String, nullable=False)
    words_count = Column(Integer, default=0)
    last_repetition_time = Column(DateTime, nullable=True)
    user = relationship("UserInfo", back_populates="known_words")

class ThousandMostUsed(Base):
    __tablename__ = "thousand_most_used_words"
    id = Column(Integer, primary_key=True, autoincrement=True)
    words_eng = Column(String, nullable=False, unique=True)
    words_rus = Column(String, nullable=False)

class FiveThousandMostUsed(Base):
    __tablename__ = "five_thousands_most_used_words"
    id = Column(Integer, primary_key=True, autoincrement=True)
    words_eng = Column(String, nullable=False, unique=True)
    words_rus = Column(String, nullable=False)

class MostUsedITWords(Base):
    __tablename__ = "most_used_it_words"
    id = Column(Integer, primary_key=True, autoincrement=True)
    words_eng = Column(String, nullable=False, unique=True)
    words_rus = Column(String, nullable=False)
    
def create_dynamic_days_word_model(username: str):
    class DynamicDaysWordsList(Base):
        __tablename__ = f"{username}_days_words_list"
        __table_args__ = {'extend_existing': True}

        words_eng = Column(String, primary_key=True)
        words_rus = Column(String)

    return DynamicDaysWordsList