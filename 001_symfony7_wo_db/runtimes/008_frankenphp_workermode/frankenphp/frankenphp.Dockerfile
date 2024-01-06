FROM dunglas/frankenphp:latest-php8.3.1

RUN set -xe; \
    apt update; \
    apt install unzip

RUN install-php-extensions \
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

COPY ./runtimes/008_frankenphp_workermode/frankenphp/Caddyfile /etc/caddy/Caddyfile

# Issue with php.ini-production, worker can't start.
#RUN cp $PHP_INI_DIR/php.ini-production $PHP_INI_DIR/php.ini
COPY ./runtimes/008_frankenphp_workermode/frankenphp/conf.d/php.ini $PHP_INI_DIR/conf.d/custom-php.ini

ENV FRANKENPHP_CONFIG="worker ./public/index.php"
ENV APP_RUNTIME="Runtime\\FrankenPhpSymfony\\Runtime"

COPY "./project" "/app"

RUN cd /app && \
    cp .env.example .env.local && \
    rm -rf vendor && \
    composer install --no-dev --no-scripts --prefer-dist --no-interaction && \
    composer dump-autoload --no-dev --classmap-authoritative && \
    composer check-platform-reqs && \
    php bin/console cache:clear && \
    php bin/console cache:warmup