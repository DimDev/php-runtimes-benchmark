## help	:	Print commands help.
help : Makefile
	@sed -n 's/^##//p' $<

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
#################### 009 Openswoole ####################
##
## start/runtime/009-openswoole	:	Start 009 Runtime: Openswoole.
start/runtime/009-openswoole:
	cd runtimes/009_openswoole && docker compose up -d --force-recreate

## stop/runtime/009-openswoole	:	Stop 009 Runtime: Openswoole.
stop/runtime/009-openswoole:
	cd runtimes/009_openswoole && docker compose stop

## rebuild/runtime/009-openswoole	:	Rebuild&Start 009 Runtime: Openswoole
rebuild/runtime/009-openswoole:
	cd runtimes/009_openswoole && docker compose up -d --force-recreate --build

## down/runtime/009-openswoole	:	Remove all related to 009 Runtime Openswoole.
down/runtime/009-openswoole:
	cd runtimes/009_openswoole && docker compose down

## shell/runtime/009-openswoole	:	Login to 009 Runtime: Openswoole.
shell/runtime/009-openswoole:
	@docker container exec -it 009_openswoole bash

##
#################### Load Testing ####################
##

## run/loadtest/ab-n1000-c5	:	Run "ab -n 1000 -c 5 URL"
run/loadtest/ab-n1000-c5:
	docker run --rm --name ab-loadttest --network php-benchmarks httpd:2.4.58-bookworm ab -n 1000 -c 5 "http://symfony7site/?firstName=Randomlfirstname&lastName=Randomlastname"

## run/loadtest/ab-n1000-c10	:	Run "ab -n 1000 -c 10 URL"
run/loadtest/ab-n1000-c10:
	docker run --rm --name ab-loadttest --network php-benchmarks httpd:2.4.58-bookworm ab -n 1000 -c 10 "http://symfony7site/?firstName=Randomlfirstname&lastName=Randomlastname"

## run/loadtest/ab-n1000-c100	:	Run "ab -n 1000 -c 100 URL"
run/loadtest/ab-n1000-c100:
	docker run --rm --name ab-loadttest --network php-benchmarks httpd:2.4.58-bookworm ab -n 1000 -c 100 "http://symfony7site/?firstName=Randomlfirstname&lastName=Randomlastname"

## run/loadtest/ab-n10000-c1000	:	Run "ab -n 10000 -c 1000 URL"
run/loadtest/ab-n10000-c1000:
	docker run --rm --name ab-loadttest --network php-benchmarks httpd:2.4.58-bookworm ab -n 10000 -c 1000	"http://symfony7site/?firstName=Randomlfirstname&lastName=Randomlastname"

## run/loadtest/k6-vus5-dur10s	:	Run k6 vus:5 duration: 10s
run/loadtest/k6-vus5-dur30s:
	docker run --rm --net php-benchmarks -i grafana/k6 run - <./testing-tools/k6/script_vus5_dur30s.js

## run/loadtest/k6-vus10-dur30s	:	Run k6 vus:10 duration: 30s
run/loadtest/k6-vus10-dur30s:
	docker run --rm --net php-benchmarks -i grafana/k6 run - <./testing-tools/k6/script_vus10_dur30s.js

## run/loadtest/k6-vus100-dur30s	:	Run k6 vus:100 duration: 30s
run/loadtest/k6-vus100-dur30s:
	docker run --rm --net php-benchmarks -i grafana/k6 run - <./testing-tools/k6/script_vus100_dur30s.js

## run/loadtest/k6-vus1000-dur30s	:	Run k6 vus:1000 duration: 30s
run/loadtest/k6-vus1000-dur30s:
	docker run --rm --net php-benchmarks -i grafana/k6 run - <./testing-tools/k6/script_vus1000_dur30s.js

## run/loadtest/k6-vus10000-dur30s	:	Run k6 vus:10000 duration: 30s
run/loadtest/k6-vus10000-dur30s:
	docker run --rm --net php-benchmarks -i grafana/k6 run - <./testing-tools/k6/script_vus10000_dur30s.js

## run/loadtest/bombardier-c5-d30s	:	Run bombardier concurrent connections: 5, duration: 30s
run/loadtest/bombardier-c5-d30s:
	docker run --rm --name bombardier-loadttest --network php-benchmarks  alpine/bombardier:1.2.6 -c 5 -d 30s "http://symfony7site/?firstName=Randomlfirstname&lastName=Randomlastname"

## run/loadtest/bombardier-c10-d30s	:	Run bombardier concurrent connections: 10, duration: 30s
run/loadtest/bombardier-c10-d30s:
	docker run --rm --name bombardier-loadttest --network php-benchmarks  alpine/bombardier:1.2.6 -c 10 -d 30s "http://symfony7site/?firstName=Randomlfirstname&lastName=Randomlastname"

## run/loadtest/bombardier-c100-d30s	:	Run bombardier concurrent connections: 100, duration: 30s
run/loadtest/bombardier-c100-d30s:
	docker run --rm --name bombardier-loadttest --network php-benchmarks  alpine/bombardier:1.2.6 -c 100 -d 30s "http://symfony7site/?firstName=Randomlfirstname&lastName=Randomlastname"

## run/loadtest/bombardier-c1000-d30s	:	Run bombardier concurrent connections: 1000, duration: 30s
run/loadtest/bombardier-c1000-d30s:
	docker run --rm --name bombardier-loadttest --network php-benchmarks  alpine/bombardier:1.2.6 -c 1000 -d 30s "http://symfony7site/?firstName=Randomlfirstname&lastName=Randomlastname"

## run/loadtest/bombardier-c10000-d30s	:	Run bombardier concurrent connections: 10000, duration: 30s
run/loadtest/bombardier-c10000-d30s:
	docker run --rm --name bombardier-loadttest --network php-benchmarks  alpine/bombardier:1.2.6 -c 10000 -d 30s "http://symfony7site/?firstName=Randomlfirstname&lastName=Randomlastname"

## run/loadtest/wrk-c5-d30s	:	Run wrk, concurrent connections: 5, duration: 30s
run/loadtest/wrk-c5-d30s:
	docker run --rm --name wrk-loadtest --network php-benchmarks williamyeh/wrk:4.0.2 -c 5 -d 30s "http://symfony7site/?firstName=Randomlfirstname&lastName=Randomlastname"


## run/loadtest/wrk-c10-d30s	:	Run wrk, concurrent connections: 10, duration: 30s
run/loadtest/wrk-c10-d30s:
	docker run --rm --name wrk-loadtest --network php-benchmarks williamyeh/wrk:4.0.2 -c 10 -d 30s "http://symfony7site/?firstName=Randomlfirstname&lastName=Randomlastname"

## run/loadtest/wrk-c100-d30s	:	Run wrk, concurrent connections: 100, duration: 30s
run/loadtest/wrk-c100-d30s:
	docker run --rm --name wrk-loadtest --network php-benchmarks williamyeh/wrk:4.0.2 -c 100 -d 30s "http://symfony7site/?firstName=Randomlfirstname&lastName=Randomlastname"

## run/loadtest/wrk-c1000-d30s	:	Run wrk, concurrent connections: 1000, duration: 30s
run/loadtest/wrk-c1000-d30s:
	docker run --rm --name wrk-loadtest --network php-benchmarks williamyeh/wrk:4.0.2 -t 1 -c 1000 -d 30s "http://symfony7site/?firstName=Randomlfirstname&lastName=Randomlastname"