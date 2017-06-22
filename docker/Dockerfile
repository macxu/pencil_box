FROM node

RUN mkdir /website
WORKDIR /website

ADD . /website/

WORKDIR /website/web
RUN npm install

WORKDIR /website/web/bin

ENTRYPOINT ["node", "www"]