FROM php:8.2-apache
RUN apt-get update
RUN apt-get upgrade
RUN apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng-dev \
        libcurl4-openssl-dev \
        libpng-dev \
        libssh2-1-dev \
        libssh2-1 \
        curl \
        libc-client-dev \
        libkrb5-dev \
        libonig-dev \
        libpq-dev \
        libzip-dev
RUN docker-php-ext-install -j$(nproc) mbstring pdo_mysql tokenizer iconv mysqli
RUN docker-php-ext-configure gd --with-freetype=/usr/include/ --with-jpeg=/usr/include/
RUN docker-php-ext-install -j$(nproc) gd
RUN rm -r /var/lib/apt/lists/*
RUN docker-php-ext-configure imap --with-kerberos --with-imap-ssl
RUN docker-php-ext-install curl imap zip
 
# Apache modules
RUN a2enmod rewrite
