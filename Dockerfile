FROM node:15.8.0
ENV NODE_ENV=production

WORKDIR /app

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install -g npm@7.21.1


COPY . .

CMD [ "node", "stream-server.js" ]