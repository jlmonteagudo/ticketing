FROM node:12-alpine
ENV CI=true

WORKDIR /app
COPY package.json .
RUN npm install
COPY dist/apps/backend/auth .

CMD [ "node", "main.js" ]
