FROM node:lts-alpine

WORKDIR /app

COPY package*.json ./

RUN npm i --also-dev

COPY . . 

EXPOSE 8000

CMD ["npx", "nodemon", "index.js"]