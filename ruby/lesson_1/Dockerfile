FROM ruby:3.2.2-slim
ENV TZ="Asia/Tokyo"
ENV LANG C.UTF-8

RUN apt-get update -y && apt-get upgrade -y && apt-get install -y \
  build-essential vim less bash

RUN mkdir /app
WORKDIR /app

ADD . /app

CMD ["/bin/bash"]
