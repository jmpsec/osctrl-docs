+++
title = "osctrld"
date = 2022-09-01T15:09:46+02:00
weight = 1
pre = ""
+++

`osctrld` is the daemon service for enrolled osquery nodes in **osctrl**.

Execute `./osctrld -h` to show the main help of the program:

```properties
$ ./bin/osctrld -h
NAME:
   osctrld - Daemon for osctrl, the fast and efficient osquery management

USAGE:
   osctrld [global options] command [command options] [arguments...]

VERSION:
   1.0.0

DESCRIPTION:
   Daemon for osctrl, the fast and efficient osquery management, to manage secret, flags and osquery deployment

COMMANDS:
   enroll   Enroll a new node in osctrl, using new secret and flag files
   remove   Remove enrolled node from osctrl, clearing secret and flag files
   verify   Verify flags, cert and secret for an enrolled node in osctrl
   flags    Retrieve flags for osquery from osctrl and write them locally
   cert     Retrieve server certificate for osquery from osctrl and write it locally
   help, h  Shows a list of commands or help for one command

GLOBAL OPTIONS:
   --certificate FILE, -C FILE                                    Use FILE as certificate for osquery, if needed. Default depends on OS [$OSQUERY_CERTIFICATE]
   --configuration value, -c value, --conf value, --config value  Configuration file for osctrld to load all necessary values [$OSCTRL_CONFIG]
   --environment value, -e value, --env value                     Environment in osctrl to enrolled nodes to [$OSCTRL_ENV]
   --flagfile FILE, -F FILE                                       Use FILE as flagfile for osquery. Default depends on OS [$OSQUERY_FLAGFILE]
   --force, -f                                                    Overwrite existing files for flags, certificate and secret (default: false) [$OSCTRL_FORCE]
   --help, -h                                                     show help (default: false)
   --insecure, -i                                                 Ignore TLS warnings, often used with self-signed certificates (default: false) [$OSCTRL_INSECURE]
   --osctrl-url value, -U value                                   Base URL for the osctrl server [$OSCTRL_URL]
   --osquery-path FILE, --osquery FILE, -o FILE                   Use FILE as path for osquery installation, if needed. Default depends on OS [$OSQUERY_PATH]
   --secret value, -s value                                       Enroll secret to authenticate against osctrl server [$OSCTRL_SECRET]
   --secret-file FILE, -S FILE                                    Use FILE as secret file for osquery. Default depends on OS [$OSQUERY_SECRET]
   --verbose, -V                                                  Enable verbose informational messages (default: false) [$OSCTRL_VERBOSE]
   --version, -v                                                  print the version (default: false)
```
