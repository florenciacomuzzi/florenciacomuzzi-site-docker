FROM debian:12

WORKDIR /var/www/html
#COPY --chown=www-data:www-data . .
RUN apt-get update && apt-get install -y curl && curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp