+++
title = "osctrl-tls"
date = 2019-08-10T19:03:05+02:00
weight = 1
pre = ""
+++

`osctrl-tls` is the TLS service for **osctrl**.

Execute `./osctrl-tls -h` to show the main help of the program:

```properties
$ ./osctrl-tls -h
NAME:
   osctrl-tls - TLS service for osctrl, a fast and efficient osquery management

USAGE:
   osctrl-tls [global options] command [command options] [arguments...]

VERSION:
   0.3.4

DESCRIPTION:
   TLS service for osctrl, a fast and efficient osquery management

COMMANDS:
   help

GLOBAL OPTIONS:
   --config, -c                     Provide service configuration via JSON file (default: false) [$SERVICE_CONFIG]
   --config-file FILE, -C FILE      Load service configuration from FILE (default: "config/tls.json") [$SERVICE_CONFIG_FILE]
   --listener value, -l value       Listener for the service (default: "0.0.0.0") [$SERVICE_LISTENER]
   --port value, -p value           TCP port for the service (default: "9000") [$SERVICE_PORT]
   --auth value, -A value           Authentication mechanism for the service (default: "none") [$SERVICE_AUTH]
   --host value, -H value           Exposed hostname the service uses (default: "0.0.0.0") [$SERVICE_HOST]
   --logger value, -L value         Logger mechanism to handle status/result logs from nodes (default: "db") [$SERVICE_LOGGER]
   --redis, -r                      Provide redis configuration via JSON file (default: false) [$REDIS_CONFIG]
   --redis-file FILE, -R FILE       Load redis configuration from FILE (default: "config/redis.json") [$REDIS_CONFIG_FILE]
   --redis-connection-string value  Redis connection string, must include schema (<redis|rediss|unix>://<user>:<pass>@<host>:<port>/<db>?<options> [$REDIS_CONNECTION_STRING]
   --redis-host value               Redis host to be connected to (default: "127.0.0.1") [$REDIS_HOST]
   --redis-port value               Redis port to be connected to (default: "6379") [$REDIS_PORT]
   --redis-pass value               Password to be used for redis [$REDIS_PASS]
   --redis-db value                 Redis database to be selected after connecting (default: 0) [$REDIS_DB]
   --redis-status-exp value         Redis expiration in hours for status logs (default: 24) [$REDIS_STATUS_EXP]
   --redis-result-exp value         Redis expiration in hours for result logs (default: 24) [$REDIS_RESULT_EXP]
   --redis-query-exp value          Redis expiration in hours for query logs (default: 24) [$REDIS_QUERY_EXP]
   --redis-conn-retry value         Time in seconds to retry the connection to the cache, if set to 0 the service will stop if the connection fails (default: 7) [$REDIS_CONN_RETRY]
   --db, -d                         Provide DB configuration via JSON file (default: false) [$DB_CONFIG]
   --db-file FILE, -D FILE          Load DB configuration from FILE (default: "config/db.json") [$DB_CONFIG_FILE]
   --db-host value                  Backend host to be connected to (default: "127.0.0.1") [$DB_HOST]
   --db-port value                  Backend port to be connected to (default: "5432") [$DB_PORT]
   --db-name value                  Database name to be used in the backend (default: "osctrl") [$DB_NAME]
   --db-user value                  Username to be used for the backend (default: "postgres") [$DB_USER]
   --db-pass value                  Password to be used for the backend (default: "postgres") [$DB_PASS]
   --db-max-idle-conns value        Maximum number of connections in the idle connection pool (default: 20) [$DB_MAX_IDLE_CONNS]
   --db-max-open-conns value        Maximum number of open connections to the database (default: 100) [$DB_MAX_OPEN_CONNS]
   --db-conn-max-lifetime value     Maximum amount of time a connection may be reused (default: 30) [$DB_CONN_MAX_LIFETIME]
   --db-conn-retry value            Time in seconds to retry the connection to the database, if set to 0 the service will stop if the connection fails (default: 7) [$DB_CONN_RETRY]
   --tls, -t                        Enable TLS termination. It requires certificate and key (default: false) [$TLS_SERVER]
   --cert FILE, -T FILE             TLS termination certificate from FILE (default: "config/tls.crt") [$TLS_CERTIFICATE]
   --key FILE, -K FILE              TLS termination private key from FILE (default: "config/tls.key") [$TLS_KEY]
   --logger-file value, -F value    Logger configuration to handle status/results logs from nodes (default: "config/logger.json") [$LOGGER_FILE]
   --always-log, -a, --always       Always log status and on-demand query logs from nodes in database (default: false) [$ALWAYS_LOG]
   --carver-type value              Carver to be used to receive files extracted from nodes (default: "db") [$CARVER_TYPE]
   --carver-file value              Carver configuration file to receive files extracted from nodes (default: "config/carver.json") [$CARVER_FILE]
   --log-s3-bucket value            S3 bucket to be used as configuration for logging [$LOG_S3_BUCKET]
   --log-s3-region value            S3 region to be used as configuration for logging [$LOG_S3_REGION]
   --log-s3-key-id value            S3 access key id to be used as configuration for logging [$LOG_S3_KEY_ID]
   --log-s3-secret value            S3 access key secret to be used as configuration for logging [$LOG_S3_SECRET]
   --carver-s3-bucket value         S3 bucket to be used as configuration for carves [$CARVER_S3_BUCKET]
   --carver-s3-region value         S3 region to be used as configuration for carves [$CARVER_S3_REGION]
   --carve-s3-key-id value          S3 access key id to be used as configuration for carves [$CARVER_S3_KEY_ID]
   --carve-s3-secret value          S3 access key secret to be used as configuration for carves [$CARVER_S3_SECRET]
   --version, -v                    print the version
```
