FROM php:8.3-apache

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

COPY ./runtimes/001_apache_modphp/sites-enabled/symfony7site.conf /etc/apache2/sites-available/symfony7site.conf
RUN a2ensite symfony7site

COPY ./runtimes/001_apache_modphp/mods-available/mpm_prefork.conf /etc/apache2/mods-available/mpm_prefork.conf
COPY ./runtimes/001_apache_modphp/mods-available/status.conf /etc/apache2/mods-available/status.conf

COPY "./project" "/var/www/symfony"

RUN cp /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini;
COPY ./runtimes/001_apache_modphp/php.ini /usr/local/etc/php/conf.d/custom-php.ini

WORKDIR /var/www/symfony

RUN rm -rf vendor && \
    cp .env.example .env.local && \
    composer install --no-dev --no-scripts --prefer-dist --no-interaction && \
    composer dump-autoload --no-dev --classmap-authoritative && \
    composer check-platform-reqs && \
    php bin/console cache:clear && \
    php bin/console cache:warmup


