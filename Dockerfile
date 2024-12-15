# Base image
FROM php:8.1-apache

# Install required packages
RUN apt-get update && apt-get install -y \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    libonig-dev \
    libzip-dev \
    unzip \
    curl \
    mariadb-client \
    git \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install gd pdo pdo_mysql mysqli zip

# Enable Apache modules
RUN a2enmod rewrite

# Set permissions for the working directory
WORKDIR /var/www/html

# Expose the port used by Apache
EXPOSE 80
