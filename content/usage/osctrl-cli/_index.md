+++
title = "osctrl-cli"
date = 2019-08-10T19:03:12+02:00
weight = 3
pre = ""
+++

`osctrl-cli` is the CLI for **osctrl**. Its purpose is to execute actions in **osctrl** without having to access directly the backend or use the admin interface. It can be very handy to automate actions in scripts or similar.

Execute `./osctrl-cli -h` to show the main help of the program:

```properties
$ ./osctrl-cli -h
NAME:
   osctrl-cli - CLI for osctrl

USAGE:
   osctrl-cli [global options] command [command options] [arguments...]

VERSION:
   0.3.0

DESCRIPTION:
   CLI for osctrl, a fast and efficient osquery management

COMMANDS:
   user              Commands for users
   environment, env  Commands for TLS environment
   settings          Commands for settings
   node              Commands for nodes
   query             Commands for queries
   tag               Commands for tags
   check             Checks DB connection
   help, h           Shows a list of commands or help for one command

GLOBAL OPTIONS:
   --db, -d                      Provide DB configuration via JSON file (default: false) [$DB_CONFIG]
   --db-file FILE, -D FILE       Load DB configuration from FILE (default: "config/db.json") [$DB_CONFIG_FILE]
   --db-host value               Backend host to be connected to (default: "127.0.0.1") [$DB_HOST]
   --db-port value               Backend port to be connected to (default: "5432") [$DB_PORT]
   --db-name value               Database name to be used in the backend (default: "osctrl") [$DB_NAME]
   --db-user value               Username to be used for the backend (default: "postgres") [$DB_USER]
   --db-pass value               Password to be used for the backend (default: "postgres") [$DB_PASS]
   --db-max-idle-conns value     Maximum number of connections in the idle connection pool (default: 20) [$DB_MAX_IDLE_CONNS]
   --db-max-open-conns value     Maximum number of open connections to the database (default: 100) [$DB_MAX_OPEN_CONNS]
   --db-conn-max-lifetime value  Maximum amount of time a connection may be reused (default: 30) [$DB_CONN_MAX_LIFETIME]
   --help, -h                    show help (default: false)
   --version, -v                 print the version (default: false)
```

Each command has its own help and it is displayed appending `-h` to them. Each subcommand has its own help as well.
