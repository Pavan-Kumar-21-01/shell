FROM node:26-alpine3.23
RUN addgroup -S expense && adduser -S expense -G expense
RUN mkdir /opt/backend
RUN chown expense:expense /opt/backend
WORKDIR /opt/backend
COPY package*.json .
COPY *.js .
RUN npm install
ENV DB_HOST="mysql"
USER expense
CMD ["node", "index.js"]