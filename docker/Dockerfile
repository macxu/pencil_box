FROM node

ENV API_SERVER api_server
ENV API_SERVER_PORT 9900

RUN mkdir /website
WORKDIR /website

ADD . /website/

WORKDIR /website/web
RUN npm install

WORKDIR /website/web/bin

ENTRYPOINT ["node", "www"]