+++
title = "osctrl-api"
date = 2020-03-02T19:03:05-08:00
weight = 2
pre = ""
+++

`osctrl-api` is the API service for **osctrl**.

Execute `./osctrl-api help` to show the main help of the program:

```properties
$ ./osctrl-api help
NAME:
   osctrl-api - API service for osctrl, a fast and efficient osquery management

USAGE:
   osctrl-api [global options] command [command options] [arguments...]

VERSION:
   0.4.1

DESCRIPTION:
   API service for osctrl, a fast and efficient osquery management

COMMANDS:
   help

GLOBAL OPTIONS:
   --config, -c                     Provide service configuration via JSON file (default: false) [$SERVICE_CONFIG]
   --config-file FILE, -C FILE      Load service configuration from FILE (default: "config/api.json") [$SERVICE_CONFIG_FILE]
   --listener value, -l value       Listener for the service (default: "0.0.0.0") [$SERVICE_LISTENER]
   --port value, -p value           TCP port for the service (default: "9002") [$SERVICE_PORT]
   --auth value, -A value           Authentication mechanism for the service (default: "none") [$SERVICE_AUTH]
   --host value, -H value           Exposed hostname the service uses (default: "0.0.0.0") [$SERVICE_HOST]
   --logging value, -L value        Logging mechanism to handle logs from nodes (default: "none") [$SERVICE_LOGGER]
   --redis, -r                      Provide redis configuration via JSON file (default: false) [$REDIS_CONFIG]
   --redis-file FILE, -R FILE       Load redis configuration from FILE (default: "config/redis.json") [$REDIS_CONFIG_FILE]
   --redis-connection-string value  Redis connection string, must include schema (<redis|rediss|unix>://<user>:<pass>@<host>:<port>/<db>?<options> [$REDIS_CONNECTION_STRING]
   --redis-host value               Redis host to be connected to (default: "127.0.0.1") [$REDIS_HOST]
   --redis-port value               Redis port to be connected to (default: "6379") [$REDIS_PORT]
   --redis-pass value               Password to be used for redis [$REDIS_PASS]
   --redis-db value                 Redis database to be selected after connecting (default: 0) [$REDIS_DB]
   --redis-conn-retry value         Time in seconds to retry the connection to the cache, if set to 0 the service will stop if the connection fails (default: 7) [$REDIS_CONN_RETRY]
   --db, -d                         Provide DB configuration via JSON file (default: false) [$DB_CONFIG]
   --db-file FILE, -D FILE          Load DB configuration from FILE (default: "config/db.json") [$DB_CONFIG_FILE]
   --db-host value                  Backend host to be connected to (default: "127.0.0.1") [$DB_HOST]
   --db-port value                  Backend port to be connected to (default: "5432") [$DB_PORT]
   --db-name value                  Database name to be used in the backend (default: "osctrl") [$DB_NAME]
   --db-user value                  Username to be used for the backend (default: "postgres") [$DB_USER]
   --db-pass value                  Password to be used for the backend (default: "postgres") [$DB_PASS]
   --db-sslmode value               SSL native support to encrypt the connection to the backend (default: "disable") [$DB_SSLMODE]
   --db-max-idle-conns value        Maximum number of connections in the idle connection pool (default: 20) [$DB_MAX_IDLE_CONNS]
   --db-max-open-conns value        Maximum number of open connections to the database (default: 100) [$DB_MAX_OPEN_CONNS]
   --db-conn-max-lifetime value     Maximum amount of time a connection may be reused (default: 30) [$DB_CONN_MAX_LIFETIME]
   --db-conn-retry value            Time in seconds to retry the connection to the database, if set to 0 the service will stop if the connection fails (default: 7) [$DB_CONN_RETRY]
   --tls, -t                        Enable TLS termination. It requires certificate and key (default: false) [$TLS_SERVER]
   --cert FILE, -T FILE             TLS termination certificate from FILE (default: "config/tls.crt") [$TLS_CERTIFICATE]
   --key FILE, -K FILE              TLS termination private key from FILE (default: "config/tls.key") [$TLS_KEY]
   --jwt, -j                        Provide JWT configuration via JSON file (default: false) [$JWT_CONFIG]
   --jwt-file FILE                  Load JWT configuration from FILE (default: "config/jwt.json") [$JWT_CONFIG_FILE]
   --jwt-secret value               Password to be used for the backend [$JWT_SECRET]
   --jwt-expire value               Maximum amount of hours for the tokens to expire (default: 3) [$JWT_EXPIRE]
   --version, -v                    print the version
```
