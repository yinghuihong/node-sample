FROM node:12-alpine
WORKDIR /app
COPY . .
RUN sudo -s \
    && npm install -g yarn \
    && yarn config set registry 'https://registry.npm.taobao.org' \
    && yarn install --production
CMD ["node", "src/index.js"]