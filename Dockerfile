FROM ubuntu:14.04

MAINTAINER woflow

RUN sudo apt-get update
RUN sudo apt-get install -y build-essential g++ flex bison gperf ruby perl \
  libsqlite3-dev libfontconfig1-dev libicu-dev libfreetype6 libssl-dev \
  libpng-dev libjpeg-dev python libx11-dev libxext-dev git unzip pdftk

RUN apt-get update -y && apt-get upgrade -y && apt-get -f install -y
RUN apt-get install -y curl \
    && curl -sL https://deb.nodesource.com/setup_0.12 | sudo bash -

RUN apt-get install -y nodejs