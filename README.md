# PHP runtimes benchmark

The repo contains the Symfony 7 application skeleton to be run in different runtimes:

- Apache(prefork mode) + mod_php
- Apache + PHP-FPM
- Nginx + PHP-FPM
- Nginx Unit
- Roadrunner
- Nginx + Roadrunner
- FrankenPHP
- FrankenPHP (worker mode)
- Openswoole

## URLs

- http://localhost/
- http://localhost/?firstName=Randomlfirstname&lastName=Randomlastname
- http://localhost/phpinfo
- http://symfony7site/
- http://symfony7site/?firstName=Randomlfirstname&lastName=Randomlastname
- http://symfony7site/phpinfo

## Run load tests

Load tests are run inside docker container, which is in the same network as the runtime.

### Apache HTTP server benchmarking tool

- https://httpd.apache.org/docs/2.4/programs/ab.html

```shell
make run/loadtest/ab-n100-c5
make run/loadtest/ab-n1000-c100
make run/loadtest/ab-n10000-c1000
```

### K6 (by Grafana Labs)

- https://k6.io/docs/

See js scripts in 001_symfony7_wo_db/testing-tools/k6

```shell
make run/loadtest/k6-vus5-dur10s
make run/loadtest/k6-vus10-dur30s
make run/loadtest/k6-vus100-dur30s
make run/loadtest/k6-vus1000-dur30s
make run/loadtest/k6-vus10000-dur30s
```

## 001: Apache(prefork mode) + mod_php

- http://localhost/server-status


```shell
make start/runtime/001-apache-modphp
make stop/runtime/001-apache-modphp
make rebuild/runtime/001-apache-modphp
make down/runtime/001-apache-modphp
make shell/runtime/001-apache-modphp
```

## 002: Apache + PHP-FPM

- http://localhost/apache-status
- http://localhost/fpm-status?html&full


```shell
make start/runtime/002-apache-phpfpm
make stop/runtime/002-apache-phpfpm
make rebuild/runtime/002-apache-phpfpm
make down/runtime/002-apache-phpfpm
make shell/runtime/002-apache
make shell/runtime/002-phpfpm
```

## 003: Nginx + PHP-FPM

- http://localhost/fpm-status?html&full

```shell
make start/runtime/003-nginx-phpfpm
make stop/runtime/003-nginx-phpfpm
make rebuild/runtime/003-nginx-phpfpm
make down/runtime/003-nginx-phpfpm
make shell/runtime/003-nginx
make shell/runtime/003-phpfpm
```

## 004: Nginx Unit + PHP Language module

- https://unit.nginx.org/configuration/#php

```shell
make start/runtime/004-nginx-unit
make stop/runtime/004-nginx-unit
make rebuild/runtime/004-nginx-unit
make down/runtime/004-nginx-unit
make shell/runtime/004-unit
```

## 005: Roadrunner

The symfony/runtime component is used

- https://roadrunner.dev/
- https://github.com/baldinof/roadrunner-bundle

```shell
make start/runtime/005-roadrunner
make stop/runtime/005-roadrunner
make rebuild/runtime/005-roadrunner
make down/runtime/005-roadrunner
make shell/runtime/005-roadrunner
```

## 006: Nginx + Roadrunner(fcgi mode)

The symfony/runtime component is used

- https://roadrunner.dev/docs/app-server-nginx-with-rr/current/en
- https://github.com/baldinof/roadrunner-bundle

```shell
make start/runtime/006-nginx-roadrunner
make stop/runtime/006-nginx-roadrunner
make rebuild/runtime/006-nginx-roadrunner
make down/runtime/006-nginx-roadrunner
make shell/runtime/006-nginx
make shell/runtime/006-roadrunner
```

## 007: Frankenphp

The symfony/runtime component is used

- https://frankenphp.dev/docs/

```shell
make start/runtime/007-frankenphp
make stop/runtime/007-frankenphp
make rebuild/runtime/007-frankenphp
make down/runtime/007-frankenphp
make shell/runtime/007-frankenphp
```

## 008: Frankenphp (workermode)

The symfony/runtime component is used

- https://frankenphp.dev/docs/worker/

```shell
make start/runtime/008-frankenphp-workermode
make stop/runtime/008-frankenphp-workermode
make rebuild/runtime/008-frankenphp-workermode
make down/runtime/008-frankenphp-workermode
make shell/runtime/008-frankenphp-workermode
```

### Issues
- FrankenPHP can't start with production version of php.ini, which is provided with official PHP image


## 009: Openswoole

The symfony/runtime component is used

- https://github.com/php-runtime/swoole
- https://openswoole.com/docs

```shell
make start/runtime/009-openswoole
make stop/runtime/009-openswoole
make rebuild/runtime/009-openswoole
make down/runtime/009-openswoole
make shell/runtime/009-openswoole
```
