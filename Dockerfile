FROM node:12
#create app directory
WORKDIR /usr/src/app
#installation
COPY package*.json ./

RUN npm install

COPY . .
EXPOSE 8080
CMD ["node", "index.js"]