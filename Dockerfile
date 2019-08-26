FROM python:2.7.16-alpine3.9
MAINTAINER "meetutarun16@gmail.com"


ENV PYTHONUNBUFFERED 1

WORKDIR /app
COPY ./requirements.txt ./
RUN pip install -r requirements.txt

COPY ./app ./

RUN adduser -D user
USER user