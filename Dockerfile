FROM node:16

WORKDIR /app

ADD index.mjs /app/index.mjs
ADD package.json /app/
ADD package-lock.json /app/

RUN npm ci

EXPOSE 3000

CMD node /app/index.mjs
