FROM node:12-alpine
WORKDIR /app
COPY . .
RUN npm install -g yarn \
    && yarn config get registry \
    && yarn config set registry 'https://registry.npm.taobao.org' \
    && yarn config get registry \
    && yarn install --production
CMD ["node", "src/index.js"]