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
   0.2.7

DESCRIPTION:
   TLS service for osctrl, a fast and efficient osquery management

COMMANDS:
   help

GLOBAL OPTIONS:
   --config, -c                   Provide service configuration via JSON file (default: false) [$SERVICE_CONFIG]
   --config-file FILE, -C FILE    Load service configuration from FILE (default: "config/tls.json") [$SERVICE_CONFIG_FILE]
   --listener value, -l value     Listener for the service (default: "0.0.0.0") [$SERVICE_LISTENER]
   --port value, -p value         TCP port for the service (default: "9000") [$SERVICE_PORT]
   --auth value, -A value         Authentication mechanism for the service (default: "none") [$SERVICE_AUTH]
   --host value, -H value         Exposed hostname the service uses (default: "0.0.0.0") [$SERVICE_HOST]
   --logger value, -L value       Logger mechanism to handle status/result logs from nodes (default: "db") [$SERVICE_LOGGER]
   --db, -d                       Provide DB configuration via JSON file (default: false) [$DB_CONFIG]
   --db-file FILE, -D FILE        Load DB configuration from FILE (default: "config/db.json") [$DB_CONFIG_FILE]
   --db-host value                Backend host to be connected to (default: "127.0.0.1") [$DB_HOST]
   --db-port value                Backend port to be connected to (default: "5432") [$DB_PORT]
   --db-name value                Database name to be used in the backend (default: "postgres") [$DB_NAME]
   --db-user value                Username to be used for the backend (default: "postgres") [$DB_USER]
   --db-pass value                Password to be used for the backend (default: "postgres") [$DB_PASS]
   --db-max-idle-conns value      Maximum number of connections in the idle connection pool (default: 20) [$DB_MAX_IDLE_CONNS]
   --db-max-open-conns value      Maximum number of open connections to the database (default: 100) [$DB_MAX_OPEN_CONNS]
   --db-conn-max-lifetime value   Maximum amount of time a connection may be reused (default: 30) [$DB_CONN_MAX_LIFETIME]
   --tls, -t                      Enable TLS termination. It requires certificate and key (default: false) [$TLS_SERVER]
   --cert FILE, -T FILE           TLS termination certificate from FILE (default: "config/tls.crt") [$TLS_CERTIFICATE]
   --key FILE, -K FILE            TLS termination private key from FILE (default: "config/tls.key") [$TLS_KEY]
   --logger-file value, -F value  Logger configuration to handle status/results logs from nodes (default: "config/logger.json") [$LOGGER_FILE]
   --version, -v                  print the version (default: false)
```
