FROM php:5.6-apache
COPY docker/apache2.conf /etc/apache2/apache2.conf
COPY docker/php.ini /usr/local/etc/php
RUN apt-get update -y && apt-get install -y libmcrypt-dev libjpeg-dev libfreetype6-dev && docker-php-ext-install -j$(nproc) mysql mysqli mcrypt iconv gd
