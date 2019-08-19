+++
title = "environment"
date = 2019-08-17T11:57:57-07:00
weight = 2
pre = ""
+++

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
