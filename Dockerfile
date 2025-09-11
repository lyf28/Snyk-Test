FROM node:10
WORKDIR /app
# 升級內建 npm（或使用 corepack）
RUN npm i -g npm@latest
COPY package*.json ./
RUN npm ci --only=production
COPY . .
CMD ["node","server.js"]