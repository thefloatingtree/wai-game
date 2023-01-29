FROM node:19

WORKDIR /app

COPY . .

RUN npm ci
RUN npm run build

EXPOSE 8080
CMD ["npm", "run", "serve"]