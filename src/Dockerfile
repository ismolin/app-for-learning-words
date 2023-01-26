FROM python:latest
RUN apt-get update && apt-get install python3-pip -y && pip install --upgrade pip
COPY .. /app-for-learning-words
WORKDIR /app-for-learning-words
RUN pip install -r requirements.txt
CMD ["python3", "/src/main.py"]

