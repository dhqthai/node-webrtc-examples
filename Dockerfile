FROM node:12.13-alpine
RUN apk add --no-cache git

COPY . ./

RUN yarn install

COPY . ./

CMD [ "yarn", "start" ]
