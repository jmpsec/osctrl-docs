+++
title = "node"
date = 2019-08-17T11:58:13-07:00
weight = 4
pre = ""
+++

### Node

```properties
$ ./bin/osctrl-cli node -h
NAME:
   osctrl-cli node - Commands for nodes

USAGE:
   osctrl-cli node [command options]

COMMANDS:
   delete, d  Delete and archive an existing node
   tag, t     Tag an existing node
   list, l    List enrolled nodes
   show, s    Show an existing node
   lookup, f  Lookup existing nodes by identifier (UUID, hostname or localname)
   help, h    Shows a list of commands or help for one command

OPTIONS:
   --help, -h  Show help (default: false)
```

#### Delete node

```properties
$ ./bin/osctrl-cli node delete -h
NAME:
   osctrl-cli node delete - Delete and archive an existing node

USAGE:
   osctrl-cli node delete [command options]

OPTIONS:
   --uuid value, -u value  Node UUID to be deleted
   --env value, -e value   Environment to be used
   --help, -h              Show help (default: false)
```

#### Tag node

```properties
$ ./bin/osctrl-cli node tag -h
NAME:
   osctrl-cli node tag - Tag an existing node

USAGE:
   osctrl-cli node tag [command options]

OPTIONS:
   --uuid value, -u value                     Node UUID to be tagged
   --env value, -e value                      Environment to be used
   --name value, -n value, --tag-value value  Tag name to be used. It will be created if does not exist
   --tag-type value, --type value             Tag type to be used. It can be 'env', 'uuid', 'localname' and 'custom' (default: "custom")
   --help, -h                                 Show help (default: false)
```

#### List nodes

```properties
$ ./bin/osctrl-cli node list -h
NAME:
   osctrl-cli node list - List enrolled nodes

USAGE:
   osctrl-cli node list [command options]

OPTIONS:
   --active, -a           Show active nodes (default: true)
   --all, -A              Show all nodes (default: false)
   --inactive, -i         Show inactive nodes (default: false)
   --env value, -e value  Environment to be used
   --help, -h             Show help (default: false)
```

#### Show node

```properties
$ ./bin/osctrl-cli node show -h
NAME:
   osctrl-cli node show - Show an existing node

USAGE:
   osctrl-cli node show [command options]

OPTIONS:
   --uuid value, -u value  Node UUID to be shown
   --env value, -e value   Environment to be used
   --help, -h              Show help (default: false)
```

#### Lookup node

```properties
$ ./bin/osctrl-cli node lookup -h
NAME:
   osctrl-cli node lookup - Lookup existing nodes by identifier (UUID, hostname or localname)

USAGE:
   osctrl-cli node lookup [command options]

OPTIONS:
   --identifier value, --id value, -i value  Node identifier to be looked up (UUID, hostname or localname)
   --help, -h                                Show help (default: false)
```
