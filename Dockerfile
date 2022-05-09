ARG PHPVERSION
FROM php:${PHPVERSION}
RUN docker-php-ext-install pdo pdo_mysql