FROM node:latest
WORKDIR /app
COPY package.json /app
RUN npm install --legacy-peer-deps
COPY . /app
EXPOSE 3001
CMD ["npm","run","start"]