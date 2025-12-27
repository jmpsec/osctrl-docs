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
   osctrl-api [global options] [command [command options]]

DESCRIPTION:
   API service for osctrl, a fast and efficient osquery management

COMMANDS:
   help
   config-validate, config-verify  Validate YAML configuration file
   config-generate                 Generate an example configuration file using the current flag values

GLOBAL OPTIONS:
   --config, -c                      Provide service configuration via YAML file [$SERVICE_CONFIG]
   --config-file FILE, -C FILE       Load service configuration from FILE (default: "./config/api.yml") [$SERVICE_CONFIG_FILE]
   --listener string, -l string      Listener for the service (default: "127.0.0.1") [$SERVICE_LISTENER]
   --port int, -p int                TCP port for the service (default: 9000) [$SERVICE_PORT]
   --host string, -H string          Exposed hostname the service uses (default: "osctrl.net") [$SERVICE_HOST]
   --auth string, -A string          Authentication mechanism for the service (default: "none") [$SERVICE_AUTH]
   --log-level string                Log level for the service (default: "info") [$SERVICE_LOG_LEVEL]
   --log-format string               Log format for the service (default: "json") [$SERVICE_LOG_FORMAT]
   --audit-log, --audit              Enable audit log for the service. Logs all sensitive actions [$AUDIT_LOG]
   --logger string, -L string        Logger mechanism to handle status/result logs from nodes (default: "db") [$SERVICE_LOGGER]
   --logger-db-same                  Use the same DB configuration for the logger [$LOGGER_DB_SAME]
   --always-log, -a, --always        Always log status and on-demand query logs from nodes in database [$ALWAYS_LOG]
   --redis-connection-string string  Redis connection string, must include schema (<redis|rediss|unix>://<user>:<pass>@<host>:<port>/<db>?<options> [$REDIS_CONNECTION_STRING]
   --redis-host string               Redis host to be connected to (default: "127.0.0.1") [$REDIS_HOST]
   --redis-port int                  Redis port to be connected to (default: 6379) [$REDIS_PORT]
   --redis-pass string               Password to be used for redis [$REDIS_PASS]
   --redis-db int                    Redis database to be selected after connecting (default: 0) [$REDIS_DB]
   --redis-conn-retry int            Time in seconds to retry the connection to the cache, if set to 0 the service will stop if the connection fails (default: 10) [$REDIS_CONN_RETRY]
   --db-type string                  Type of backend to be used (default: "postgres") [$DB_TYPE]
   --db-host string                  Backend host to be connected to (default: "127.0.0.1") [$DB_HOST]
   --db-port int                     Backend port to be connected to (default: 5432) [$DB_PORT]
   --db-name string                  Database name to be used in the backend (default: "osctrl") [$DB_NAME]
   --db-user string                  Username to be used for the backend (default: "postgres") [$DB_USER]
   --db-pass string                  Password to be used for the backend (default: "postgres") [$DB_PASS]
   --db-sslmode string               SSL native support to encrypt the connection to the backend (default: "disable") [$DB_SSLMODE]
   --db-max-idle-conns int           Maximum number of connections in the idle connection pool (default: 20) [$DB_MAX_IDLE_CONNS]
   --db-max-open-conns int           Maximum number of open connections to the database (default: 100) [$DB_MAX_OPEN_CONNS]
   --db-conn-max-lifetime int        Maximum amount of time a connection may be reused (default: 30) [$DB_CONN_MAX_LIFETIME]
   --db-conn-retry int               Time in seconds to retry the connection to the database, if set to 0 the service will stop if the connection fails (default: 10) [$DB_CONN_RETRY]
   --db-filepath string              File path to the SQLite database, only used when type is sqlite (default: "./osctrl.db") [$DB_SQLITE_FILEPATH]
   --tls, -t                         Enable TLS termination. It requires certificate and key [$TLS_SERVER]
   --cert FILE, -T FILE              TLS termination certificate from FILE (default: "./config/tls.crt") [$TLS_CERTIFICATE]
   --key FILE, -K FILE               TLS termination private key from FILE (default: "./config/tls.key") [$TLS_KEY]
   --jwt-secret string               Password to be used for the backend [$JWT_SECRET]
   --jwt-expire int                  Maximum amount of hours for the tokens to expire (default: 3) [$JWT_EXPIRE]
   --osquery-version string          Version of osquery to be used (default: "5.20.0") [$OSQUERY_VERSION]
   --osquery-tables-file string      File with the osquery tables to be used (default: "./data/5.20.0.json") [$OSQUERY_TABLES]
   --osquery-logger                  Enable remote tls logger for osquery [$OSQUERY_LOGGER]
   --osquery-config                  Enable remote tls config for osquery [$OSQUERY_CONFIG]
   --osquery-query                   Enable remote tls queries for osquery [$OSQUERY_QUERY]
   --osquery-carve                   Enable remote tls carver for osquery [$OSQUERY_CARVE]
   --carver-type string              Carver to be used to receive files extracted from nodes (default: "db") [$CARVER_TYPE]
   --carver-s3-bucket string         S3 bucket to be used as configuration for carves [$CARVER_S3_BUCKET]
   --carver-s3-region string         S3 region to be used as configuration for carves [$CARVER_S3_REGION]
   --carve-s3-key-id string          S3 access key id to be used as configuration for carves [$CARVER_S3_KEY_ID]
   --carve-s3-secret string          S3 access key secret to be used as configuration for carves [$CARVER_S3_SECRET]
   --carver-local-dir string         Local directory to store carved files (default: "./carved_files/") [$CARVER_LOCAL_DIR]
   --enable-http-debug               Enable HTTP Debug mode to dump full HTTP incoming request [$HTTP_DEBUG]
   --http-debug-file string          File to dump the HTTP requests when HTTP Debug mode is enabled (default: "./debug-http-api.log") [$HTTP_DEBUG_FILE]
   --http-debug-show-body            Show body of the HTTP requests when HTTP Debug mode is enabled [$HTTP_DEBUG_SHOW_BODY]
   --version, -v                     Print version information
   --help, -h                        show help
```
