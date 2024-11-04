+++
title = "query"
date = 2019-08-17T11:58:17-07:00
weight = 5
pre = ""
+++

### Query

```properties
$ ./osctrl-cli query -h
NAME:
   osctrl-cli query - Commands for queries

USAGE:
   osctrl-cli query command [command options] [arguments...]

COMMANDS:
   complete, c  Mark an on-demand query as completed
   delete, d    Mark an on-demand query as deleted
   expire, e    Mark an on-demand query as expired
   run, r       Start a new on-demand query
   list, l      List on-demand queries
   help, h      Shows a list of commands or help for one command

OPTIONS:
   --help, -h  show help
```

#### Complete query

```properties
$ ./osctrl-cli query complete -h
NAME:
   osctrl-cli query complete - Mark an on-demand query as completed

USAGE:
   osctrl-cli query complete [command options] [arguments...]

OPTIONS:
   --name value, -n value  Query name to be completed
   --env value, -e value   Environment to be used
   --help, -h              show help
```

#### Delete query

```properties
$ ./osctrl-cli query delete -h
NAME:
   osctrl-cli query delete - Mark an on-demand query as deleted

USAGE:
   osctrl-cli query delete [command options] [arguments...]

OPTIONS:
   --name value, -n value  Query name to be deleted
   --env value, -e value   Environment to be used
   --help, -h              show help
```

#### Expire query

```properties
$ ./osctrl-cli query expire -h
NAME:
   osctrl-cli query expire - Mark an on-demand query as expired

USAGE:
   osctrl-cli query expire [command options] [arguments...]

OPTIONS:
   --name value, -n value  Query name to be expired
   --env value, -e value   Environment to be used
   --help, -h              show help
```

#### Run query

```properties
$ ./osctrl-cli query run -h
NAME:
   osctrl-cli query run - Start a new on-demand query

USAGE:
   osctrl-cli query run [command options] [arguments...]

OPTIONS:
   --query value, -q value       Query to be issued
   --env value, -e value         Environment to be used
   --uuid value, -u value        Node UUID to be used
   --hidden, -x                  Mark query as hidden (default: false)
   --expiration value, -E value  Expiration in hours (0 for no expiration) (default: 6)
   --help, -h                    show help
```

#### List queries

```properties
$ ./osctrl-cli query list -h
NAME:
   osctrl-cli query list - List on-demand queries

USAGE:
   osctrl-cli query list [command options] [arguments...]

OPTIONS:
   --all, -A              Show all queries (default: false)
   --active, -a           Show active queries (default: false)
   --completed, -c        Show completed queries (default: false)
   --deleted, -d          Show deleted queries (default: false)
   --hidden, -x           Show hidden queries (default: false)
   --expired, -E          Show expired queries (default: false)
   --env value, -e value  Environment to be used
   --help, -h             show help
```
