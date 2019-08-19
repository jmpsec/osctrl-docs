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
     list, l    List enrolled nodes

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
```

#### List nodes

```properties
$ ./osctrl-cli node list -h
NAME:
   osctrl-cli node list - List enrolled nodes

USAGE:
   osctrl-cli node list [command options] [arguments...]

OPTIONS:
   --all, -v       Show all nodes
   --inactive, -i  Show inactive nodes
```
