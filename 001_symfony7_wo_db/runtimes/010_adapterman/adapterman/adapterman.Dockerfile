FROM php:8.3-cli

RUN set -xe; \
    apt update; \
    apt install unzip

ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/

RUN chmod +x /usr/local/bin/install-php-extensions && \
    install-php-extensions \
        exif \
        event \
        intl \
        opcache \
        pcntl \
        pdo_pgsql \
        tidy \
        gd \
        bcmath \
        sockets \
        zip && \
    install-php-extensions @composer;

RUN cp /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini


COPY "./project" "/var/www/symfony"

WORKDIR /var/www/symfony

RUN cp .env.example .env.local
RUN rm -rf vendor && \
    composer install --no-dev --no-scripts --prefer-dist --no-interaction && \
    composer dump-autoload --no-dev --classmap-authoritative && \
    composer check-platform-reqs && \
    php bin/console cache:clear && \
    php bin/console cache:warmup

#ENV APP_RUNTIME=""
COPY ./runtimes/010_adapterman/adapterman/php.ini /usr/local/etc/php/conf.d/custom-php.ini

EXPOSE 80

CMD ["php", "server.php", "start"]