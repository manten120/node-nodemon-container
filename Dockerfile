# 開発環境用

FROM node:12

WORKDIR /app

COPY ./package*.json ./

CMD bash -c "npm install && npm run dev"