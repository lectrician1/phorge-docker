#e the official PHP-Apache base image
FROM php:7.4-apache

# Install required system packages and PHP extensions
RUN apt-get update && \
    apt-get install -y libcurl4-openssl-dev libonig-dev && \
    docker-php-ext-install mbstring iconv mysqli curl pcntl

# Expose port 80
EXPOSE 80

# Start Apache
CMD ["apache2-foreground"]

