FROM postgres:latest
ENV POSTGRES_PASSWORD=postgres
ENV POSTGRES_USER=postgres
ENV POSTGRES_DB=word_learn
ADD init_database.sql /docker-entrypoint-initdb.d/
