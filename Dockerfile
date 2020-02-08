FROM node:13-alpine

ENV CORSANYWHERE_BLACKLIST ""
ENV CORSANYWHERE_WHITELIST ""
ENV CORSANYWHERE_RATELIMIT ""
ENV HOST "0.0.0.0"

WORKDIR /usr/src/app

RUN apk install git

RUN git clone https://github.com/Rob--W/cors-anywhere .

COPY package*.json ./
RUN npm install

COPY . .
EXPOSE 8080
CMD [ "node", "server.js" ] 