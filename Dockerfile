FROM php:8.1-apache

# Copy adminer ke container
COPY adminer.php /var/www/html/index.php
