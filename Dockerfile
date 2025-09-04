FROM php:8.1-apache

RUN docker-php-ext-install mysqli pdo pdo_mysql

# hapus index bawaan apache
RUN rm -rf /var/www/html/*

# download adminer langsung dari official site
ADD https://www.adminer.org/latest-mysql.php /var/www/html/index.php

# kasih permission ke apache
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html
