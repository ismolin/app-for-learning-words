# WordsLearn

This is an application for learning English words that uses interval repetition. 
It is built on the basis of a Telegram bot, written in Python 3.10, on the asynchronous aiogram library 
and postgresql as database.

Overview of the main functions:
* Convenient sending of unknown words to study directly from the browser
* Effective word learning using quizlet cards
* Interval repetition according to the Sebastian Leitner system
* A large database of words and the ability to choose a specific category to study
* 
# How to run in Docker

To install, you must have Docker and Docker-compose on your machine. 
First you need to clone the repository:

```
git clone https://github.com/ismolin/app-for-learning-words.git

```
To create images and launch application containers, you need to use Docker-compose file:

```
docker-compose up -d
```
