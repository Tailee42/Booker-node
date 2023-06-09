FROM ubuntu:22.04

RUN apt-get update
RUN apt install nodejs -y
RUN apt install npm -y

COPY package.json /app/package.json

WORKDIR /app

RUN npm install

EXPOSE 8282

COPY . .

CMD ["node", "server.js"]
