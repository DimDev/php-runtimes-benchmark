FROM php:8.3-cli

RUN set -xe; \
    apt update; \
    apt install unzip

ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/

RUN chmod +x /usr/local/bin/install-php-extensions && \
    install-php-extensions \
        exif \
        intl \
        opcache \
        pdo_pgsql \
        tidy \
        gd \
        bcmath \
        sockets \
        zip && \
    install-php-extensions @composer;

RUN cp /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini
COPY ./runtimes/006_nginx_roadrunner/roadrunner/php.ini /usr/local/etc/php/conf.d/custom-php.ini

COPY "./project" "/var/www/symfony"

WORKDIR /var/www/symfony

RUN cp .env.example .env.local && \
    cp .rr.fcgi.yaml .rr.yaml

RUN rm -rf vendor && \
    composer install --no-dev --no-scripts --prefer-dist --no-interaction && \
    composer dump-autoload --no-dev --classmap-authoritative && \
    composer check-platform-reqs && \
    php bin/console cache:clear && \
    php bin/console cache:warmup

COPY --from=ghcr.io/roadrunner-server/roadrunner:2023.3.8 /usr/bin/rr /usr/bin/rr

EXPOSE 9000

CMD ["rr", "serve"]
