FROM wordpress:latest

# Install dependencies
RUN apt-get update && apt-get install -y less mariadb-client sudo

# Download and install WP-CLI
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
    && chmod +x wp-cli.phar \
    && mv wp-cli.phar /usr/local/bin/wp

# Allow running WP-CLI as www-data
USER www-data
WORKDIR /var/www/html

RUN wp core install --url="http://localhost:8080" --title="Florencia Comuzzi Site" --admin_user="florenciacomuzzi" --admin_email="florenciacomuzzi@me.com" --admin_password="h3yYY8looHlr"
