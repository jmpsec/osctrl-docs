+++
title = "carve"
date = 2024-11-04T12:21:37+01:00
weight = 8
pre = ""
+++

### Carve

```properties
$ ./osctrl-cli carve -h
NAME:
   osctrl-cli carve - Commands for file carves

USAGE:
   osctrl-cli carve command [command options] [arguments...]

COMMANDS:
   complete, c      Mark an file carve query as completed
   delete, d        Mark a file carve query as deleted
   expire, e        Mark a file carve query as expired
   run, r           Start a new carve for a file or a directory
   list, l          List file carves
   list-queries, l  List file carves queries
   help, h          Shows a list of commands or help for one command

OPTIONS:
   --help, -h  show help
```

#### Complete carve

```properties
$ ./osctrl-cli carve complete -h
NAME:
   osctrl-cli carve complete - Mark an file carve query as completed

USAGE:
   osctrl-cli carve complete [command options] [arguments...]

OPTIONS:
   --name value, -n value  Carve name to be completed
   --env value, -e value   Environment to be used
   --help, -h              show help
```

#### Delete carve

```properties
$ ./osctrl-cli carve delete -h
NAME:
   osctrl-cli carve delete - Mark a file carve query as deleted

USAGE:
   osctrl-cli carve delete [command options] [arguments...]

OPTIONS:
   --name value, -n value  Carve name to be deleted
   --env value, -e value   Environment to be used
   --help, -h              show help
```

#### Expire carve

```properties
$ ./osctrl-cli carve expire -h
NAME:
   osctrl-cli carve expire - Mark a file carve query as expired

USAGE:
   osctrl-cli carve expire [command options] [arguments...]

OPTIONS:
   --name value, -n value  Carve name to be expired
   --env value, -e value   Environment to be used
   --help, -h              show help
```

#### Run carve

```properties
$ ./osctrl-cli carve run -h
NAME:
   osctrl-cli carve run - Start a new carve for a file or a directory

USAGE:
   osctrl-cli carve run [command options] [arguments...]

OPTIONS:
   --path value, -p value        File or directory path to be carved
   --env value, -e value         Environment to be used
   --uuid value, -u value        Node UUID to be used
   --expiration value, -E value  Expiration in hours (0 for no expiration) (default: 6)
   --help, -h                    show help
```

#### List carves

```properties
$ ./osctrl-cli carve list -h
NAME:
   osctrl-cli carve list - List file carves

USAGE:
   osctrl-cli carve list [command options] [arguments...]

OPTIONS:
   --env value, -e value  Environment to be used
   --help, -h             show help
```

#### List carve queries

```properties
$ ./osctrl-cli carve list-queries -h
NAME:
   osctrl-cli carve list-queries - List file carves queries

USAGE:
   osctrl-cli carve list-queries [command options] [arguments...]

OPTIONS:
   --all, -A              Show all file carves queries (default: false)
   --active, -a           Show active file carves queries (default: false)
   --completed, -c        Show completed file carves queries (default: false)
   --expired, -E          Show expired file carves queries (default: false)
   --deleted, -d          Show deleted file carves queries (default: false)
   --env value, -e value  Environment to be used
   --help, -h             show help
```
