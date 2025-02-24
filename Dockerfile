FROM wordpress:latest

WORKDIR /var/www/html
COPY --chown=www-data:www-data . .
RUN composer install  --no-dev      --no-interaction     --no-ansi       --no-suggest --optimize-autoloader --ignore-platform-reqs  --prefer-dist --no-progress