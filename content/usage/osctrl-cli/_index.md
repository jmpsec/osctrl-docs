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

Each command has its own help and it is displayed appending `-h` to them. Additionally, each subcommand also has its own help as well.

### User

```properties
$ ./osctrl-cli user -h
NAME:
   osctrl-cli user - Commands for users

USAGE:
   osctrl-cli user command [command options] [arguments...]

COMMANDS:
     add, a     Add a new user
     edit, e    Edit an existing user
     delete, d  Delete an existing user
     list, l    List all existing users

OPTIONS:
   --help, -h  show help
```

#### Add user

```properties
$ ./osctrl-cli user add -h
NAME:
   osctrl-cli user add - Add a new user

USAGE:
   osctrl-cli user add [command options] [arguments...]

OPTIONS:
   --username value, -u value  Username for the new user
   --password value, -p value  Password for the new user
   --admin, -a                 Make this user an admin
   --fullname value, -n value  Full name for the new user
```

#### Edit user

```properties
$ ./osctrl-cli user edit -h
NAME:
   osctrl-cli user edit - Edit an existing user

USAGE:
   osctrl-cli user edit [command options] [arguments...]

OPTIONS:
   --username value, -u value  User to be edited
   --password value, -p value  New password to be used
   --fullname value, -n value  Full name to be used
   --admin, -a                 Make this user an admin
   --non-admin, -d             Make this user an non-admin
```

#### Delete user

```properties
$ ./osctrl-cli user delete -h
NAME:
   osctrl-cli user delete - Delete an existing user

USAGE:
   osctrl-cli user delete [command options] [arguments...]

OPTIONS:
   --username value, -u value  User to be deleted
```

#### List users

```properties
$ ./osctrl-cli user list -h
NAME:
   osctrl-cli user list - List all existing users

USAGE:
   osctrl-cli user list [arguments...]
```

---

### Environment

```properties
$ ./osctrl-cli environment -h
NAME:
   osctrl-cli environment - Commands for TLS environment

USAGE:
   osctrl-cli environment command [command options] [arguments...]

COMMANDS:
     add, a         Add a new TLS environment
     delete, d      Delete an existing TLS environment
     show, s        Show a TLS environment
     show-flags, w  Show the flags for a TLS environment
     list, l        List all existing TLS environments
     quick-add, q   Generates one-liner for quick adding nodes to environment
     flags, f       Generates the flags to run nodes in an environment
     secret, x      Output the secret to enroll nodes in an environment

OPTIONS:
   --help, -h  show help
```

#### Add environment

```properties
$ ./osctrl-cli environment add -h
NAME:
   osctrl-cli environment add - Add a new TLS environment

USAGE:
   osctrl-cli environment add [command options] [arguments...]

OPTIONS:
   --name value, -n value               Environment to be added
   --hostname value, --host value       Environment host to be added
   --debug, -d                          Environment debug capability
   --configuration value, --conf value  Configuration file to be read
   --certificate value, --crt value     Certificate file to be read
```

#### Delete environment

```properties
$ ./osctrl-cli environment delete -h
NAME:
   osctrl-cli environment delete - Delete an existing TLS environment

USAGE:
   osctrl-cli environment delete [command options] [arguments...]

OPTIONS:
   --name value, -n value  Environment to be deleted
```

#### Show environment

```properties
$ ./osctrl-cli environment show -h
NAME:
   osctrl-cli environment show - Show a TLS environment

USAGE:
   osctrl-cli environment show [command options] [arguments...]

OPTIONS:
   --name value, -n value  Environment to be displayed
```

#### Show environment flags

```properties
$ ./osctrl-cli environment show-flags -h
NAME:
   osctrl-cli environment show-flags - Show the flags for a TLS environment

USAGE:
   osctrl-cli environment show-flags [command options] [arguments...]

OPTIONS:
   --name value, -n value  Environment to be displayed
```

#### List environments

```properties
$ ./osctrl-cli environment list -h
NAME:
   osctrl-cli environment list - List all existing TLS environments

USAGE:
   osctrl-cli environment list [arguments...]
```

#### Quick-add to environment

```properties
$ ./osctrl-cli environment quick-add -h
NAME:
   osctrl-cli environment quick-add - Generates one-liner for quick adding nodes to environment

USAGE:
   osctrl-cli environment quick-add [command options] [arguments...]

OPTIONS:
   --name value, -n value    Environment to be used
   --target value, -t value  Type of one-liner (default: "sh")
```

#### Flags

```properties
$ ./osctrl-cli environment flags -h
NAME:
   osctrl-cli environment flags - Generates the flags to run nodes in an environment

USAGE:
   osctrl-cli environment flags [command options] [arguments...]

OPTIONS:
   --name value, -n value            Environment to be used
   --certificate value, --crt value  Certificate path to be used
   --secret value, -s value          Secret file path to be used
```

---

### Settings

```properties
$ ./osctrl-cli settings -h
NAME:
   osctrl-cli settings - Commands for settings

USAGE:
   osctrl-cli settings command [command options] [arguments...]

COMMANDS:
     add, a     Add a new settings value
     update, u  Update a configuration value
     delete, d  Delete an existing configuration value
     show, s    Show all configuration values

OPTIONS:
   --help, -h  show help
```

---

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

---

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
