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
     list, l      List on-demand queries

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
```

#### List queries

```properties
$ ./osctrl-cli query list -h
NAME:
   osctrl-cli query list - List on-demand queries

USAGE:
   osctrl-cli query list [command options] [arguments...]

OPTIONS:
   --active, -a     Show active queries
   --completed, -c  Show completed queries
   --deleted, -d    Show deleted queries
```
