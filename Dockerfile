FROM python:3.6
ENV PYTHONUNBUFFERED 1

MAINTAINER Pasmo

RUN mkdir /code && \
    mkdir /srv/logs

COPY ./requirements/ /code/requirements/

WORKDIR /code

RUN pip install -r requirements/base.txt && \
  rm -rf ~/.cache/pip

RUN pip install -r requirements/base.txt

COPY . /code/
