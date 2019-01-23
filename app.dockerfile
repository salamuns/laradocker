FROM php:7.1.19-fpm

RUN apt-get update && apt-get install -y libmcrypt-dev mysql-client
RUN docker-php-ext-install mcrypt pdo_mysql

# Add PHP Zip Archive & GD extension
RUN apt-get install -y zlib1g-dev libpng.dev \
&& rm -rf /var/lib/apt/lists/* \
&& docker-php-ext-install mbstring zip gd

WORKDIR /var/www
RUN chown -R www-data:www-data /var/www
