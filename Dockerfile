# define a imagem PHP
FROM php:8.3-apache

# define usuário
ARG user=<your_username>

# instala as dependencias do laravel
RUN apt-get update && apt-get install -y \
    git \
    curl \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    unzip

# instala extensões do PHP
RUN docker-php-ext-install \
    pdo_mysql \
    mbstring \
    exif \
    pcntl \
    bcmath \
    gd \
    sockets

# instala o composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# cria usuário no container
RUN useradd -G www-data,root -d /home/$user $user
RUN mkdir -p /home/$user/.composer && \
    chown -R $user:$user /home/$user

# diretório a ser utilizado
WORKDIR /var/www

USER $user