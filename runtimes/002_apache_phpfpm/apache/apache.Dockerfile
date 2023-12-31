FROM ubuntu/apache2

COPY ./runtimes/002_apache_phpfpm/apache/sites-available/symfony7site.local.conf /etc/apache2/sites-available/symfony7site.local.conf
COPY ./runtimes/002_apache_phpfpm/apache/mods-available/status.conf /etc/apache2/mods-available/status.conf

COPY "./projects/symfony-7" "/var/www/symfony"

RUN  a2enmod proxy_fcgi && \
     a2enmod rewrite && \
     a2ensite symfony7site.local

