FROM php:8.1-apache

# Aktifkan ekstensi mysqli (buat konek MySQL)
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copy adminer.php ke folder web server
COPY adminer.php /var/www/html/index.php
