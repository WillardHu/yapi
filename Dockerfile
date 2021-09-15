FROM node:12
WORKDIR /app
COPY . .
COPY config.json /config.json
RUN npm install --production --registry https://registry.npm.taobao.org &&\
  npm run install-server
ENTRYPOINT [ "node", "server/app.js" ]
