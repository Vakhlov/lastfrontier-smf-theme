# исходный образ
FROM php:7.3-apache

# установка mysqli, т.к. исходный образ не содержит этого
RUN docker-php-ext-install mysqli

# создание директории для кеша
RUN mkdir /var/www/html/forum
RUN mkdir /var/www/html/forum/cache

# выдача прав на запись в директорию для кеша пользователю
# www-data (от имени этого пользователя выполняется php-код)
RUN chmod -R 0777 /var/www/html/forum/cache