FROM node:slim

WORKDIR /app

COPY . .

ENV PORT=7860

EXPOSE 8080

RUN apt-get update && \
    chmod 775 server index.js package.json start.sh /app &&\
    npm install -r package.json

CMD ["node", "index.js"]
