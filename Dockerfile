#FROM docker.io/ubuntu:18.04

#RUN apt-get update -y && apt-get install -y python-pip python-dev
FROM docker.io/python:3.7-slim-buster

COPY ./requirement.txt /app/requirement.txt

WORKDIR /app

RUN pip install -r requirement.txt

COPY . /app

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]

