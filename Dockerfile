FROM node:12

# Create app directory
WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install --only=production

COPY . .

EXPOSE 5000
CMD [ "npm", "start" ]
