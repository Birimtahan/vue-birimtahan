FROM node:latest

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm config set registry https://registry.npmjs.org/

RUN npm ci

COPY . .

EXPOSE 3000

CMD ["npm", "run", "dev"]