FROM node:18-slim

ARG NODE_ENV_ARG

ENV NODE_ENV=$NODE_ENV_ARG

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 3000

CMD ["node", "app.js"]