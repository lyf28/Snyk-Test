FROM node:20.19.5-trixie-slim
WORKDIR /app
COPY package.json package-lock.json* ./
RUN npm install --production
COPY . .
EXPOSE 3000
CMD ["node", "server.js"]