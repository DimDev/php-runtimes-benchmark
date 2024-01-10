FROM ubuntu/apache2

COPY ./runtimes/002_apache_phpfpm/apache/sites-available/symfony7site.conf /etc/apache2/sites-available/symfony7site.conf
#COPY ./runtimes/002_apache_phpfpm/apache/mods-available/mpm_event.conf /etc/apache2/mods-available/mpm_event.conf
COPY ./runtimes/002_apache_phpfpm/apache/mods-available/status.conf /etc/apache2/mods-available/status.conf

COPY "./project" "/var/www/symfony"

RUN  a2enmod proxy_fcgi && \
     a2enmod rewrite && \
     a2ensite symfony7site

