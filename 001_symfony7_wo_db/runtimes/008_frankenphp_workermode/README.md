# 008 Runtime: Frankenphp (workermode)

### Docs
- https://frankenphp.dev/docs/worker/

### URLs

- http://localhost/?firstName=Randomlfirstname&lastName=Randomlastname
- http://localhost/phpinfo
- http://symfony7site/?firstName=Randomlfirstname&lastName=Randomlastname
- http://symfony7site/phpinfo

### Commands

-  make start/runtime/008-frankenphp-workermode
-  make stop/runtime/008-frankenphp-workermode
-  make rebuild/runtime/008-frankenphp-workermode
-  make down/runtime/008-frankenphp-workermode
-  make shell/runtime/008-frankenphp-workermode

### Issues
- FrankenPHP can't start with production version of php.ini, which is provided with official PHP image
