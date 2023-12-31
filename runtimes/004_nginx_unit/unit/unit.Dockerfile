FROM unit:php8.2

ARG DEVELOPER_USER_ID=1000
ARG DEVELOPER_GROUP_ID=1000

RUN set -xe; \
    apt update;

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
        zip && \
    install-php-extensions @composer;

COPY "./projects/symfony-7" "/var/www/symfony"


WORKDIR /var/www/symfony

RUN cp .env.example .env.local

RUN composer install --no-dev && \
    composer dump-autoload --no-dev --classmap-authoritative && \
    php bin/console cache:warmup

EXPOSE 80
EXPOSE 9090
CMD ["unitd", "--no-daemon", "--control", "*:9090"]