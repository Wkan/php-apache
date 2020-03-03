FROM php:7.4-apache

RUN docker-php-ext-install opcache pdo_mysql

# Use the default production configuration
RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"
