FROM node:14

WORKDIR /code

COPY package*.json /code/

RUN npm install

COPY . /code/

RUN touch /code/.env

CMD ["node", "./init.js"]