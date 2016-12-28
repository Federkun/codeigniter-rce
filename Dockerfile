FROM php:7.1-apache

MAINTAINER Federkun <federkun@gmail.com>

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y sendmail

COPY src /var/www/html/
COPY php.ini /usr/local/etc/php/
COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]

CMD ["apache2-foreground"]