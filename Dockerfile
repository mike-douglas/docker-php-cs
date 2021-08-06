FROM php:8.0-cli-alpine

RUN mkdir /php /app
WORKDIR /app

RUN apk add --no-cache git
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
    php composer-setup.php && \
    php -r "unlink('composer-setup.php');" && \
    mv composer.phar /usr/local/bin/composer && \
    cd /php && \
    composer require "squizlabs/php_codesniffer=*" && \
    ln -s /php/vendor/bin/* /usr/bin

CMD ["phpcs"]

