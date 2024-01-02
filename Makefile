## help	:	Print commands help.
help : Makefile
	@sed -n 's/^##//p' $<

##
#################### APACHE + mod_php ####################
##
## start-apache-modphp-prefork	:	Start apache-modphp-prefork.
start-apache-modphp-prefork:
	cd runtimes/001_apache_mod_php_prefork && docker compose up -d --force-recreate

## rebuild-apache-modphp-prefork	:	Rebuild&Start apache-modphp-prefork.
rebuild-apache-modphp-prefork:
	cd runtimes/001_apache_mod_php_prefork && docker compose up -d --force-recreate --build

## stop-apache-modphp-prefork	:	Stop apache-modphp-prefork.
stop-apache-modphp-prefork:
	cd runtimes/001_apache_mod_php_prefork && docker compose stop

## exec-apache-modphp-prefork	:	Login to apache-modphp-prefork.
exec-apache-modphp-prefork:
	@docker container exec -it apache_modphp_prefork bash

##
#################### APACHE + mod_php(dev) ####################
##
## start-apache-modphp-prefork-dev	:	Start apache-modphp-prefork-dev.
start-apache-modphp-prefork-dev:
	cd runtimes/001_apache_mod_php_prefork && docker compose -f docker-compose-dev.yaml up -d --force-recreate

## stop-apache-modphp-prefork-dev	:	Stop apache-modphp-prefork-dev.
stop-apache-modphp-prefork-dev:
	cd runtimes/001_apache_mod_php_prefork && docker compose -f docker-compose-dev.yaml stop

## exec-apache-modphp-prefork	:	Login to apache-modphp-prefork-dev.
exec-apache-modphp-prefork-dev:
	@docker container exec -it apache_modphp_prefork_dev bash

##
#################### APACHE + PHP-FPM ####################
##
## start-apache-phpfpm	:	Start apache-phpfpm.
start-apache-phpfpm:
	cd runtimes/002_apache_phpfpm && docker compose up -d --force-recreate

## stop-apache-phpfpm	:	Stop apache-phpfpm.
stop-apache-phpfpm:
	cd runtimes/002_apache_phpfpm && docker compose stop

## exec-apache-phpfpm	:	Login to apache-phpfpm.
exec-apache-phpfpm:
	@docker container exec -it 002_phpfpm bash

## rebuild-apache-phpfpm	:	Rebuild & Start apache-phpfpm.
rebuild-apache-phpfpm:
	cd runtimes/002_apache_phpfpm && docker compose -f docker-compose.yaml up -d --force-recreate --build

##
#################### NGINX + PHP-FPM ####################
##
## start-nginx-phpfpm	:	Start nginx-phpfpm.
start-nginx-phpfpm:
	cd runtimes/003_nginx_phpfpm && docker compose up -d --force-recreate

## stop-nginx-phpfpm	:	Stop nginx-phpfpm.
stop-nginx-phpfpm:
	cd runtimes/003_nginx_phpfpm && docker compose stop

## exec-nginx-phpfpm	:	Login to nginx-phpfpm.
exec-nginx-phpfpm:
	@docker container exec -it 003_nginx_phpfpm bash

##
#################### NGINX UNIT ####################
##
## start-nginx-unit	:	Start nginx-unit.
start-nginx-unit:
	cd runtimes/004_nginx_unit && docker compose up -d --force-recreate

## stop-nginx-unit	:	Stop nginx-unit.
stop-nginx-unit:
	cd runtimes/004_nginx_unit && docker compose stop

## exec-nginx-unit	:	Login to nginx-unit.
exec-nginx-unit:
	@docker container exec -it 004_nginx_unit bash

## rebuild-nginx-unit	:	Build&Start nginx-unit.
rebuild-nginx-unit:
	cd runtimes/004_nginx_unit && docker compose up -d --force-recreate --build

##
#################### ROADRUNNER ####################
##
## start-roadrunner	:	Start roadrunner.
start-roadrunner:
	cd runtimes/005_roadrunner && docker compose up -d --force-recreate

## stop-roadrunner	:	Stop roadrunner.
stop-roadrunner:
	cd runtimes/005_roadrunner && docker compose stop

## rebuild-roadrunner	:	Build&Start roadrunner.
rebuild-roadrunner:
	cd runtimes/005_roadrunner && docker compose up -d --force-recreate --build

##
#################### NGINX + ROADRUNNER ####################
##
## start-nginx-roadrunner	:	Start nginx+roadrunner.
start-nginx-roadrunner:
	cd runtimes/006_nginx_roadrunner && docker compose up -d --force-recreate

## stop-nginx-roadrunner	:	Stop nginx+roadrunner.
stop-nginx-roadrunner:
	cd runtimes/006_nginx_roadrunner && docker compose stop

## rebuild-nginx-roadrunner	:	Build&Start nginx+roadrunner.
rebuild-nginx-roadrunner:
	cd runtimes/006_nginx_roadrunner && docker compose up -d --force-recreate --build


##
#################### FRANKENPHP ####################
##
## start-frankenphp	:	Start frankenphp.
start-frankenphp:
	cd runtimes/007_frankenphp && docker compose up -d --force-recreate

## stop-frankenphp	:	Stop frankenphp.
stop-frankenphp:
	cd runtimes/007_frankenphp && docker compose stop

## rebuild-frankenphp	:	Build&Start frankenphp.
rebuild-frankenphp:
	cd runtimes/007_frankenphp && docker compose up -d --force-recreate --build

## shell-frankenphp	:	Login to frankenphp running container
shell-frankenphp:
	docker container exec -it 007_frankenphp bash

##
#################### FRANKENPHP WORKERMODE ####################
##
## start-frankenphp-workermode	:	Start frankenphp.
start-frankenphp-workermode:
	cd runtimes/008_frankenphp_workermode && docker compose up -d --force-recreate

## stop-frankenphp-workermode	:	Stop frankenphp-workermode.
stop-frankenphp-workermode:
	cd runtimes/008_frankenphp_workermode && docker compose stop

## rebuild-frankenphp-workermode	:	Build&Start frankenphp-workermode.
rebuild-frankenphp-workermode:
	cd runtimes/008_frankenphp_workermode && docker compose up -d --force-recreate --build

## shell-frankenphp-workermode	:	Login to frankenphp-workermode running container
shell-frankenphp-workermode:
	docker container exec -it 008_frankenphp_workermode bash


