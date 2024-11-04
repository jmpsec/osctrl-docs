+++
title = "node"
date = 2019-08-17T11:58:13-07:00
weight = 4
pre = ""
+++

### Node

```properties
$ ./osctrl-cli node -h
NAME:
   osctrl-cli node - Commands for nodes

USAGE:
   osctrl-cli node command [command options] [arguments...]

COMMANDS:
   delete, d  Delete and archive an existing node
   tag, t     Tag an existing node
   list, l    List enrolled nodes
   show, s    Show an existing node
   help, h    Shows a list of commands or help for one command

OPTIONS:
   --help, -h  show help
```

#### Delete node

```properties
$ ./osctrl-cli node delete -h
NAME:
   osctrl-cli node delete - Delete and archive an existing node

USAGE:
   osctrl-cli node delete [command options] [arguments...]

OPTIONS:
   --uuid value, -u value  Node UUID to be deleted
   --env value, -e value   Environment to be used
   --help, -h              show help
```

#### Tag node

```properties
$ ./osctrl-cli node tag -h
NAME:
   osctrl-cli node tag - Tag an existing node

USAGE:
   osctrl-cli node tag [command options] [arguments...]

OPTIONS:
   --uuid value, -u value       Node UUID to be tagged
   --env value, -e value        Environment to be used
   --tag-value value, -T value  Tag value to be used. It will be created if does not exist
   --help, -h                   show help
```

#### List nodes

```properties
$ ./osctrl-cli node list -h
NAME:
   osctrl-cli node list - List enrolled nodes

USAGE:
   osctrl-cli node list [command options] [arguments...]

OPTIONS:
   --active, -a           Show active nodes (default: true)
   --all, -A              Show all nodes (default: false)
   --inactive, -i         Show inactive nodes (default: false)
   --env value, -e value  Environment to be used
   --help, -h             show help
```

#### Show node

```properties
$ ./osctrl-cli node show -h
NAME:
   osctrl-cli node show - Show an existing node

USAGE:
   osctrl-cli node show [command options] [arguments...]

OPTIONS:
   --uuid value, -u value  Node UUID to be shown
   --env value, -e value   Environment to be used
   --help, -h              show help
```
