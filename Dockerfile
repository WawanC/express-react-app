FROM node:alpine
WORKDIR /usr/app
COPY package.json .
RUN npm install -g yarn
RUN yarn
COPY . .
RUN yarn build
CMD ["node", "./dist/index.js"]