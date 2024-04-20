## help	:	Print commands help.
help : Makefile
	@sed -n 's/^##//p' $<


vus := 100
duration := 30s
reqs := 1000
#bench_port := :80
bench_url := http://symfony7site$(bench_port)/?firstName=Randomlfirstname&lastName=Randomlastname

dirs := $(sort $(wildcard runtimes/*))
runtimes := $(subst _,-,$(notdir $(dirs)))

##
#################### 001 APACHE + mod_php ####################
##
## start/runtime/001-apache-modphp	:	Start 001 Runtime: Apache(prefork mode) + mod_php.
start/runtime/001-apache-modphp:
	cd runtimes/001_apache_modphp && docker compose up -d --force-recreate

## stop/runtime/001-apache-modphp	:	Stop 001 Runtime: Apache(prefork mode) + mod_php.
stop/runtime/001-apache-modphp:
	cd runtimes/001_apache_modphp && docker compose stop

## rebuild/runtime/001-apache-modphp	:	Rebuild&Start 001 Runtime: Apache(prefork mode) + mod_php.
rebuild/runtime/001-apache-modphp:
	cd runtimes/001_apache_modphp && docker compose up -d --force-recreate --build

## down/runtime/001-apache-modphp	:	Remove all related to 001 Runtime.
down/runtime/001-apache-modphp:
	cd runtimes/001_apache_modphp && docker compose down

## shell/runtime/001-apache-modphp	:	Login to 001 Runtime: Apache(prefork mode) + mod_php.
shell/runtime/001-apache-modphp:
	@docker container exec -it 001_apache_modphp bash

##
#################### 002 APACHE + PHP-FPM ####################
##
## start/runtime/002-apache-phpfpm	:	Start 002 Runtime: Apache + PHP-FPM.
start/runtime/002-apache-phpfpm:
	cd runtimes/002_apache_phpfpm && docker compose up -d --force-recreate

## stop/runtime/002-apache-phpfpm	:	Stop 002 Runtime: Apache + PHP-FPM.
stop/runtime/002-apache-phpfpm:
	cd runtimes/002_apache_phpfpm && docker compose stop

## rebuild/runtime/002-apache-phpfpm	:	Rebuild&Start 002 Runtime: Apache + PHP-FPM.
rebuild/runtime/002-apache-phpfpm:
	cd runtimes/002_apache_phpfpm && docker compose up -d --force-recreate --build

## down/runtime/002-apache-phpfpm	:	Remove all related to 002 Runtime.
down/runtime/002-apache-phpfpm:
	cd runtimes/002_apache_phpfpm && docker compose down

## shell/runtime/002-apache	:	Login to 002 Runtime: Apache.
shell/runtime/002-apache:
	@docker container exec -it 002_apache bash

## shell/runtime/002-phpfpm	:	Login to 002 Runtime: PHP-FPM.
shell/runtime/002-phpfpm:
	@docker container exec -it 002_phpfpm bash

##
#################### 003 NGINX + PHP-FPM ####################
##
## start/runtime/003-nginx-phpfpm	:	Start 003 Runtime: Nginx + PHP-FPM.
start/runtime/003-nginx-phpfpm:
	cd runtimes/003_nginx_phpfpm && docker compose up -d --force-recreate

## stop/runtime/003-nginx-phpfpm	:	Stop 003 Runtime: Nginx + PHP-FPM.
stop/runtime/003-nginx-phpfpm:
	cd runtimes/003_nginx_phpfpm && docker compose stop

## rebuild/runtime/003-nginx-phpfpm	:	Rebuild&Start 003 Runtime: Nginx + PHP-FPM.
rebuild/runtime/003-nginx-phpfpm:
	cd runtimes/003_nginx_phpfpm && docker compose up -d --force-recreate --build

## down/runtime/003-nginx-phpfpm	:	Remove all related to 003 Runtime.
down/runtime/003-nginx-phpfpm:
	cd runtimes/003_nginx_phpfpm && docker compose down

## shell/runtime/003-nginx	:	Login to 003 Runtime: Nginx.
shell/runtime/003-nginx:
	@docker container exec -it 003_nginx bash

## shell/runtime/003-phpfpm	:	Login to 003 Runtime: PHP-FPM.
shell/runtime/003-phpfpm:
	@docker container exec -it 003_phpfpm bash

##
#################### 004 NGINX Unit ####################
##
## start/runtime/004-nginx-unit	:	Start 004 Runtime: Nginx Unit.
start/runtime/004-nginx-unit:
	cd runtimes/004_nginx_unit && docker compose up -d --force-recreate

## stop/runtime/004-nginx-unit	:	Stop 004 Runtime: Nginx Unit.
stop/runtime/004-nginx-unit:
	cd runtimes/004_nginx_unit && docker compose stop

## rebuild/runtime/004-nginx-unit	:	Rebuild&Start 004 Runtime: Nginx Unit.
rebuild/runtime/004-nginx-unit:
	cd runtimes/004_nginx_unit && docker compose up -d --force-recreate --build

## down/runtime/004-nginx-unit	:	Remove all related to 004 Runtime.
down/runtime/004-nginx-unit:
	cd runtimes/004_nginx_unit && docker compose down

## shell/runtime/004-nginx	:	Login to 004 Runtime: Nginx Unit.
shell/runtime/004-nginx-unit:
	@docker container exec -it 004_nginx_unit bash


##
#################### 005 Roadrunner ####################
##
## start/runtime/005-roadrunner	:	Start 005 Runtime: Roadrunner.
start/runtime/005-roadrunner:
	cd runtimes/005_roadrunner && docker compose up -d --force-recreate

## stop/runtime/005-roadrunner	:	Stop 005 Runtime: Roadrunner.
stop/runtime/005-roadrunner:
	cd runtimes/005_roadrunner && docker compose stop

## rebuild/runtime/005-roadrunner	:	Rebuild&Start 005 Runtime: Roadrunner.
rebuild/runtime/005-roadrunner:
	cd runtimes/005_roadrunner && docker compose up -d --force-recreate --build

## down/runtime/005-roadrunner	:	Remove all related to 005 Runtime.
down/runtime/005-roadrunner:
	cd runtimes/005_roadrunner && docker compose down

## shell/runtime/005-roadrunner	:	Login to 005 Runtime: Roadrunner.
shell/runtime/005-roadrunner:
	@docker container exec -it 005_roadrunner bash

##
#################### 006 Nginx + Roadrunner ####################
##
## start/runtime/006-nginx-roadrunner	:	Start 006 Runtime: Nginx + Roadrunner.
start/runtime/006-nginx-roadrunner:
	cd runtimes/006_nginx_roadrunner && docker compose up -d --force-recreate

## stop/runtime/006-nginx-roadrunner	:	Stop 006 Runtime: Nginx + Roadrunner.
stop/runtime/006-nginx-roadrunner:
	cd runtimes/006_nginx_roadrunner && docker compose stop

## rebuild/runtime/006-nginx-roadrunner	:	Rebuild&Start 006 Runtime: Nginx + Roadrunner.
rebuild/runtime/006-nginx-roadrunner:
	cd runtimes/006_nginx_roadrunner && docker compose up -d --force-recreate --build

## down/runtime/006-nginx-roadrunner	:	Remove all related to 006 Nginx + Runtime.
down/runtime/006-nginx-roadrunner:
	cd runtimes/006_nginx_roadrunner && docker compose down

## shell/runtime/006-nginx	:	Login to 006 Nginx
shell/runtime/006-nginx:
	@docker container exec -it 006_nginx bash

## shell/runtime/006-roadrunner	:	Login to 006 Roadrunner.
shell/runtime/006-roadrunner:
	@docker container exec -it 006_roadrunner bash

##
#################### 007 Frankenphp ####################
##
## start/runtime/007-frankenphp	:	Start 007 Runtime: Frankenphp.
start/runtime/007-frankenphp:
	cd runtimes/007_frankenphp && docker compose up -d --force-recreate

## stop/runtime/007-frankenphp	:	Stop 007 Runtime: Frankenphp.
stop/runtime/007-frankenphp:
	cd runtimes/007_frankenphp && docker compose stop

## rebuild/runtime/007-frankenphp	:	Rebuild&Start 007 Runtime: Frankenphp.
rebuild/runtime/007-frankenphp:
	cd runtimes/007_frankenphp && docker compose up -d --force-recreate --build

## down/runtime/007-frankenphp	:	Remove all related to 007 Runtime.
down/runtime/007-frankenphp:
	cd runtimes/007_frankenphp && docker compose down

## shell/runtime/007-frankenphp	:	Login to 007 Runtime: Frankenphp.
shell/runtime/007-frankenphp:
	@docker container exec -it 007_frankenphp bash

##
#################### 008 Frankenphp (workermode) ####################
##
## start/runtime/008-frankenphp-workermode	:	Start 008 Runtime: Frankenphp (workermode).
start/runtime/008-frankenphp-workermode:
	cd runtimes/008_frankenphp_workermode && docker compose up -d --force-recreate

## stop/runtime/008-frankenphp-workermode	:	Stop 008 Runtime: Frankenphp (workermode).
stop/runtime/008-frankenphp-workermode:
	cd runtimes/008_frankenphp_workermode && docker compose stop

## rebuild/runtime/008-frankenphp-workermode	:	Rebuild&Start 008 Runtime: Frankenphp (workermode).
rebuild/runtime/008-frankenphp-workermode:
	cd runtimes/008_frankenphp_workermode && docker compose up -d --force-recreate --build

## down/runtime/008-frankenphp-workermode	:	Remove all related to 008 Runtime: Frankenphp (workermode).
down/runtime/008-frankenphp-workermode:
	cd runtimes/008_frankenphp_workermode && docker compose down

## shell/runtime/008-frankenphp-workermode	:	Login to 008 Runtime: Frankenphp (workermode).
shell/runtime/008-frankenphp-workermode:
	@docker container exec -it 008_frankenphp_workermode bash

##
#################### 009 Swoole ####################
##
## start/runtime/009-swoole	:	Start 009 Runtime: Swoole.
start/runtime/009-swoole:
	cd runtimes/009_swoole && docker compose up -d --force-recreate

## stop/runtime/009-swoole	:	Stop 009 Runtime: Swoole.
stop/runtime/009-swoole:
	cd runtimes/009_swoole && docker compose stop

## rebuild/runtime/009-swoole	:	Rebuild&Start 009 Runtime: Swoole
rebuild/runtime/009-swoole:
	cd runtimes/009_swoole && docker compose up -d --force-recreate --build

## down/runtime/009-swoole	:	Remove all related to 009 Runtime Swoole.
down/runtime/009-swoole:
	cd runtimes/009_swoole && docker compose down

## shell/runtime/009-swoole	:	Login to 009 Runtime: Swoole.
shell/runtime/009-swoole:
	@docker container exec -it 009_swoole bash

##

#################### 011 Caddy + PHP-FPM ####################
##
## start/runtime/011-caddy-phpfpm	:	Start 011 Runtime: Caddy + PHP-FPM.
start/runtime/011-caddy-phpfpm:
	cd runtimes/011_caddy_phpfpm && docker compose up -d --force-recreate

## stop/runtime/011-caddy-phpfpm	:	Stop 011 Runtime: Caddy + PHP-FPM.
stop/runtime/011-caddy-phpfpm:
	cd runtimes/011_caddy_phpfpm && docker compose stop

## rebuild/runtime/011-caddy-phpfpm	:	Rebuild&Start 011 Runtime: Caddy + PHP-FPM.
rebuild/runtime/011-caddy-phpfpm:
	cd runtimes/011_caddy_phpfpm && docker compose up -d --force-recreate --build

## down/runtime/011-caddy-phpfpm	:	Remove all related to 011 Runtime Caddy + PHP-FPM..
down/runtime/011-caddy-phpfpm:
	cd runtimes/011_caddy_phpfpm && docker compose down

## shell/runtime/011-caddy-phpfpm	:	Login to 011 Runtime: Caddy + PHP-FPM..
shell/runtime/011-caddy-phpfpm:
	@docker container exec -it 011_caddy_phpfpm bash

#################### 010 Adapterman ####################
##
## start/runtime/010-adapterman	:	Start 010 Runtime: Adapterman.
start/runtime/010-adapterman:
	cd runtimes/010_adapterman && docker compose up -d --force-recreate

## stop/runtime/010-adapterman	:	Stop 010 Runtime: Adapterman.
stop/runtime/010-adapterman:
	cd runtimes/010_adapterman && docker compose stop

## rebuild/runtime/010-adapterman	:	Rebuild&Start 010 Runtime: Adapterman
rebuild/runtime/010-adapterman:
	cd runtimes/010_adapterman && docker compose up -d --force-recreate --build

## down/runtime/010-adapterman	:	Remove all related to 010 Runtime Adapterman.
down/runtime/010-adapterman:
	cd runtimes/010_adapterman && docker compose down

## shell/runtime/010-adapterman	:	Login to 010 Runtime: Adapterman.
shell/runtime/010-adapterman:
	@docker container exec -it 010_adapterman bash

##
#################### Load Testing ####################
##

## run/loadtest/ab		:	Run ab, reqs=1000 (default) vus=100 (default)
run/loadtest/ab:
	docker run --rm --name ab-loadttest --network php-benchmarks httpd:2.4.58-bookworm ab -n $(reqs) -c $(vus) $(bench_url)

## run/loadtest/k6		:	Run k6 vus=100 (default) duration=30s (default)
run/loadtest/k6:
	docker run --rm --net php-benchmarks -i grafana/k6 run --vus $(vus) --duration $(duration) - <./testing-tools/k6_bench.js

## run/loadtest/bombardier	:	Run bombardier vus=100 (default) duration=30s (default)
run/loadtest/bombardier:
	docker run --rm --name bombardier-loadttest --network php-benchmarks  alpine/bombardier:1.2.6 -c $(vus) -d $(duration) $(bench_url)

## run/loadtest/wrk		:	Run wrk, vus=100 (default) duration=30s (default)
run/loadtest/wrk:
	docker run --rm --name wrk-loadtest --network php-benchmarks williamyeh/wrk:4.0.2 -c $(vus) -d $(duration) $(bench_url)

run/bench: start/runtime/$(runtime) run/loadtest/k6 stop/runtime/$(runtime)
	@echo ---- $(runtime) ----

## run/bench/all			:	Run bench with k6, vus=100 (default) duration=30s (default)
run/bench/all:
	@for name in $(runtimes); do \
		make run/bench runtime=$${name}; \
		sleep 3; \
	done
