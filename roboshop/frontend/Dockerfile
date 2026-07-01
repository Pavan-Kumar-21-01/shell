FROM nginx
WORKDIR /opt/frontend
RUN addgroup -S roboshop && adduser -S roboshop -G roboshop
RUN rm -rf /usr/share/nginx/html/* 
RUN rm -rf /etc/nginx/nginx.conf
ADD static /usr/share/nginx/html/
ADD nginx.conf /usr/share/nginx.conf
USER roboshop
CMD ["nginx", "-g","daemon off;"]