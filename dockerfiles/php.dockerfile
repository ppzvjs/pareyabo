FROM php:8.3-fpm

WORKDIR /var/www/html

# Add necessary PHP extensions
RUN docker-php-ext-install pdo pdo_mysql