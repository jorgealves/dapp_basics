FROM node:latest

RUN mkdir /app

WORKDIR /app

VOLUME [ "/app" ]

ADD ./explorer /app

RUN npm install -g bower

RUN npm install 

RUN bower install --allow-root
