FROM nginx
RUN rm -rf /etc/nginx/conf.d/default.conf
ADD ./nginx.conf /etc/nginx/conf.d/nginx.conf
RUN mkdir /etc/nginx/ssl
COPY ssl/ /etc/nginx/ssl/