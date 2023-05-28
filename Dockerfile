FROM node:alpine
WORKDIR /usr/app
COPY package.json .
RUN yarn
COPY . .
WORKDIR /usr/app/client
RUN yarn
WORKDIR /usr/app
RUN yarn build
CMD ["node", "./dist/index.js"]