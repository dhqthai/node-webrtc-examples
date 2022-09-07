FROM node:12.13-alpine
RUN apk add --no-cache git
RUN apk add --update python make g++\
   && rm -rf /var/cache/apk/*

COPY . ./

RUN yarn install

COPY . ./

CMD [ "yarn", "start" ]
