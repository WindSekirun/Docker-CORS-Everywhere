FROM node:13-alpine

ENV CORSANYWHERE_BLACKLIST ""
ENV CORSANYWHERE_WHITELIST ""
ENV CORSANYWHERE_RATELIMIT ""
ENV HOST "0.0.0.0"

WORKDIR /usr/src/app

RUN apk update && apk upgrade && apk add --no-cache bash git openssh
RUN git clone https://github.com/Rob--W/cors-anywhere .

COPY . .

RUN npm install

EXPOSE 8080
CMD [ "node", "server.js" ] 