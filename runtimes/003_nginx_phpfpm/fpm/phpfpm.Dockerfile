FROM php:8.3-fpm

RUN set -xe; \
    apt update;

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

RUN cp /usr/local/etc/php/php.ini-development /usr/local/etc/php/php.ini;
COPY ./runtimes/002_apache_phpfpm/fpm/php.ini /usr/local/etc/php/conf.d/custom-php.ini
COPY ./runtimes/002_apache_phpfpm/fpm/www.conf /usr/local/etc/php-fpm.d/www.conf

WORKDIR /var/www/symfony

RUN cp .env.example .env.local

RUN composer install --no-dev && \
    composer dump-autoload --no-dev --classmap-authoritative && \
    php bin/console cache:warmup