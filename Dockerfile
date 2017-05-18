FROM node:7.10

MAINTAINER woflow

RUN apt-get update
RUN apt-get install pdftk -y
