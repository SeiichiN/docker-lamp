FROM php:7.3-apache 
COPY ./conf/php.ini /usr/local/etc/php/
RUN apt-get update \
    && apt-get install -y libzip-dev \
    && apt-get install -y zlib1g-dev \
    && apt-get install -y libfreetype6-dev libjpeg62-turbo-dev libpng-dev \
    && apt-get install -y wget vim unzip less \
    && rm -rf /var/lib/apt/lists/* \
    && docker-php-ext-install zip
RUN docker-php-ext-install mysqli pdo_mysql mbstring gd iconv

# 修正時刻： Sat Jun 20 12:37:20 2020
