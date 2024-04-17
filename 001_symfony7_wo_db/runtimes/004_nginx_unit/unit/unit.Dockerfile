FROM unit:php8.3

RUN set -xe; \
    apt update; \
    apt install unzip

RUN cp /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini;
ADD ./runtimes/004_nginx_unit/unit/config /docker-entrypoint.d/config

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

COPY "./project" "/var/www/symfony"


WORKDIR /var/www/symfony

RUN cp .env.example .env.local

RUN rm -rf vendor && \
    composer install --no-dev --no-scripts --prefer-dist --no-interaction && \
    composer dump-autoload --no-dev --classmap-authoritative && \
    composer check-platform-reqs && \
    php bin/console cache:clear && \
    php bin/console cache:warmup

EXPOSE 80
EXPOSE 9090
CMD ["unitd", "--no-daemon", "--control", "*:9090"]