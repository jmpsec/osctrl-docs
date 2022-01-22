+++
title = "osctrl-admin"
date = 2019-08-10T19:03:08+02:00
weight = 2
pre = ""
+++

`osctrl-admin` is the Admin service for **osctrl**.

Execute `./osctrl-admin -h` to show the main help of the program:

```properties
$ ./osctrl-admin -h
NAME:
   osctrl-admin - Admin service for osctrl, a fast and efficient osquery management

USAGE:
   osctrl-admin [global options] command [command options] [arguments...]

VERSION:
   0.2.7

DESCRIPTION:
   Admin service for osctrl, a fast and efficient osquery management

COMMANDS:
   help

GLOBAL OPTIONS:
   --config, -c                   Provide service configuration via JSON file (default: false) [$SERVICE_CONFIG]
   --config-file FILE, -C FILE    Load service configuration from FILE (default: "config/admin.json") [$SERVICE_CONFIG_FILE]
   --listener value, -l value     Listener for the service (default: "0.0.0.0") [$SERVICE_LISTENER]
   --port value, -p value         TCP port for the service (default: "9001") [$SERVICE_PORT]
   --auth value, -A value         Authentication mechanism for the service (default: "db") [$SERVICE_AUTH]
   --host value, -H value         Exposed hostname the service uses (default: "0.0.0.0") [$SERVICE_HOST]
   --logging value, -L value      Logging mechanism to handle logs from nodes (default: "db") [$SERVICE_LOGGING]
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
   --saml-file FILE               Load SAML configuration from FILE (default: "config/saml.json") [$SAML_CONFIG_FILE]
   --headers-file FILE            Load authentication headers configuration from FILE (default: "config/headers.json") [$HEADERS_CONFIG_FILE]
   --jwt, -j                      Provide JWT configuration via JSON file (default: false) [$JWT_CONFIG]
   --jwt-file FILE                Load JWT configuration from FILE (default: "config/jwt.json") [$JWT_CONFIG_FILE]
   --jwt-secret value             Password to be used for the backend [$JWT_SECRET]
   --jwt-expire value             Maximum amount of hours for the tokens to expire (default: 3) [$JWT_EXPIRE]
   --osquery-version value        Set osquery version as default to be used (default: "5.0.1") [$OSQUERY_VERSION]
   --osquery-tables FILE          Load osquery tables schema from FILE (default: "data/5.0.1.json") [$OSQUERY_TABLES]
   --logger-file value, -F value  Logger configuration to handle status/results logs from nodes (default: "config/logger.json") [$LOGGER_FILE]
   --static value, -s value       Directory with all the static files needed for the osctrl-admin UI (default: "./static") [$STATIC_FILES]
   --templates value              Directory with all the static files needed for the osctrl-admin UI (default: "./tmpl_admin") [$STATIC_FILES]
   --version, -v                  print the version (default: false)
```
