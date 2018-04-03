FROM node:8-alpine

COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

COPY . /app

WORKDIR /app

RUN npm install

ENTRYPOINT ["docker-entrypoint.sh"]

CMD ["node", "app.js"]
