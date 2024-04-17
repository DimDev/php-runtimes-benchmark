FROM caddy:2.7.6

COPY ./runtimes/011_caddy_phpfpm/caddy/Caddyfile /etc/caddy/Caddyfile

COPY "./project" "/var/www/symfony"
