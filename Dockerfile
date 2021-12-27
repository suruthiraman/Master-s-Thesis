FROM node:latest
WORKDIR /app1
COPY package.json /app
RUN npm install
COPY . /app1
CMD node index.js
EXPOSE 8011
