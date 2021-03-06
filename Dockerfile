FROM nginx:1.11
MAINTAINER Simon Frost <s.frost@frostnet.co.uk>

ENV PHP_HOST phpfpm
ENV PHP_PORT 9000
ENV APP_MAGE_MODE developer

COPY ./conf/nginx.conf /etc/nginx/
COPY ./conf/default.conf /etc/nginx/conf.d/
COPY ./bin/start.sh /usr/local/bin/start.sh

WORKDIR /var/www/html

CMD ["/usr/local/bin/start.sh"]
