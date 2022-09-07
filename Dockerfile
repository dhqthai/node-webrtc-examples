FROM node:12.13.1

COPY . ./

RUN yarn install

COPY . ./

CMD [ "yarn", "start" ]
