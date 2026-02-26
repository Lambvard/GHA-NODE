FROM node:20_alpine
WORKDIR /app
COPY package.json ./
RUN npm ci --only=development
COPY . .
CMD ['NODE', 'index.js']