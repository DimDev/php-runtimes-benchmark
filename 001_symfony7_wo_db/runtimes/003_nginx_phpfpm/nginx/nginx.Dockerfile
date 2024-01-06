FROM nginx:1.25.3
COPY ./runtimes/003_nginx_phpfpm/nginx/conf.d/symfony7site.conf /etc/nginx/conf.d/symfony7site.conf
COPY "./project" "/var/www/symfony"

