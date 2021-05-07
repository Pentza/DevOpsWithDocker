```console
$ docker inspect $(docker ps -q) --format '{{.Config.User}} {{.Name}}'

appuser /backend_210
  /database_210
appuser /frontend_210
  /nginx-proxy_210
  /redis_210
```