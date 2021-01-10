FROM node:alpine

WORKDIR /app

COPY package.json . 

RUN npm i 

COPY . .

EXPOSE 4000

USER node

CMD node index.js