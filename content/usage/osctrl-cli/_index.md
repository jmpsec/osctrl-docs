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

DESCRIPTION:
   CLI for osctrl, a fast and efficient operative system management

COMMANDS:
     user              Commands for users
     environment, env  Commands for TLS environment
     settings          Commands for settings
     node              Commands for nodes
     query             Commands for queries
     check             Checks DB connection
     help, h           Shows a list of commands or help for one command

GLOBAL OPTIONS:
   -D FILE, --db FILE  Load DB configuration from FILE (default: "config/db.json") [$DB_CONFIG]
   --help, -h          show help
   --version, -v       print the version
```

Each command has its own help and it is displayed appending `-h` to them. Each subcommand has its own help as well.
