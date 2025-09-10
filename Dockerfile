FROM node:20.19.5-alpine3.22
WORKDIR /app
COPY package.json package-lock.json* ./
RUN npm install --production
COPY . .
EXPOSE 3000
CMD ["node", "server.js"]