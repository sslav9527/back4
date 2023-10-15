FROM node:slim

WORKDIR /app

COPY . .

ENV SERVER_PORT=7860

EXPOSE 3000

RUN apt-get update && \
    chmod 775 server index.js package.json start.sh /app &&\
    npm install -r package.json

CMD ["node", "index.js"]
