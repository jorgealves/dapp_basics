FROM node:latest

RUN mkdir /dapp

WORKDIR /dapp

ADD . /dapp

VOLUME [ "/dapp" ]

RUN npm install -g --save truffle