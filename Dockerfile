FROM node:16-alpine as buildstep

WORKDIR /app

COPY ./calculator/package*.json .

RUN npm install

COPY ./calculator .

EXPOSE 3000

CMD ["npm", "start"]
