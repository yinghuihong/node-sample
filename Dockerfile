FROM node:12-alpine
WORKDIR /app
COPY . .
RUN yarn config set registry https://registry.npm.taobao.org --global && yarn install --production
CMD ["node", "src/index.js"]