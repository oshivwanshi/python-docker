# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

WORKDIR /app

RUN pip install Flask mysql-connector-python \
    && pip3 freeze > requirements.txt \
    && pip3 install -r requirements.txt

COPY . .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
