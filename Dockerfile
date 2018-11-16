FROM php:7.1-apache
COPY ./config/php.ini /usr/local/etc/php/php.ini
RUN apt-get update
RUN apt-get install -y libicu-dev
RUN apt-get install -y libpq-dev
RUN apt-get install -y libmcrypt-dev
RUN apt-get install -y mysql-client
RUN apt-get install -y git
RUN apt-get install -y zip
RUN apt-get install -y unzip
RUN docker-php-ext-configure pdo_mysql --with-pdo-mysql=mysqlnd
RUN docker-php-ext-install intl
RUN docker-php-ext-install mbstring
RUN docker-php-ext-install pdo_mysql
# RUN docker-php-ext-install curl
# RUN docker-php-ext-install sqlite
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN a2enmod rewrite
