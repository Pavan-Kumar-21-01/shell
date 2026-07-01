FROM node:26-alpine3.23
WORKDIR /opt/server
RUN addgroup -S roboshop && adduser -S roboshop -G roboshop
COPY *.json .
COPY *.js .
RUN npm install
ENV REDIS_HOST="redis" \
    CATALOGUE_HOST="catalogue" \
    CATALOGUE_PORT="8080"
USER roboshop
CMD ["node","server.js"]