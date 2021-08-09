FROM node:14-alpine

WORKDIR /app

COPY package.json /app/
COPY package-lock.json /app/

RUN npm install --production

COPY . /app

ENV NODE_ENV production
ENTRYPOINT ["node", "-r", "esm", "./bin/server", "--apiKey"]
