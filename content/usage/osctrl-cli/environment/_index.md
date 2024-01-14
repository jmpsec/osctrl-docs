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
   add, a                  Add a new TLS environment
   update, u               Update an existing TLS environment
   add-scheduled-query     Add a new query to the osquery schedule for an environment
   remove-scheduled-query  Remove query from the osquery schedule for an environment
   add-osquery-option      Add or change an osquery option to the configuration
   remove-osquery-option   Remove an option for the osquery configuration
   add-new-pack            Add a new query pack to the osquery configuration
   add-local-pack          Add a new local query pack to the osquery configuration
   remove-pack             Remove query pack from the osquery configuration
   add-query-to-pack       Add a new query to the given query pack
   remove-query-from-pack  Remove query from the given query pack
   delete, d               Delete an existing TLS environment
   show, s                 Show a TLS environment
   show-flags, w           Show the flags for a TLS environment
   gen-flags, g            Generate and save the flags for a TLS environment
   list, l                 List all existing TLS environments
   quick-add, q            Generates one-liner for quick adding nodes to environment
   flags, f                Generates the flags to run nodes in an environment
   secret, x               Output the secret to enroll nodes in an environment
   help, h                 Shows a list of commands or help for one command

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
   --name value, -n value            Environment name to be added
   --hostname value, --host value    Environment host to be added
   --debug, -d                       Environment debug capability (default: false)
   --certificate value, --crt value  Certificate file to be read
   --help, -h                        show help
```

#### Update environment

```properties
$ ./osctrl-cli environment update -h
NAME:
   osctrl-cli environment update - Update an existing TLS environment

USAGE:
   osctrl-cli environment update [command options] [arguments...]

OPTIONS:
   --name value, -n value          Environment name to be updated
   --debug, -d                     Environment debug capability (default: false)
   --enroll, -e                    Environment enroll capability (default: false)
   --hostname value, --host value  Environment host to be updated
   --logging value, -l value       Logging interval in seconds (default: 0)
   --config value, -c value        Config interval in seconds (default: 0)
   --query value, -q value         Query interval in seconds (default: 0)
   --help, -h                      show help
```

#### Add scheduled query to environment

```properties
$ ./osctrl-cli environment add-scheduled-query -h
NAME:
   osctrl-cli environment add-scheduled-query - Add a new query to the osquery schedule for an environment

USAGE:
   osctrl-cli environment add-scheduled-query [command options] [arguments...]

OPTIONS:
   --name value, -n value        Environment name to be updated
   --query value, -q value       Query to be added to the schedule
   --query-name value, -Q value  Query name to be idenfified in the schedule
   --interval value, -i value    Query interval in seconds (default: 0)
   --platform value, -p value    Restrict this query to a given platform
   --version value, -v value     Only run on osquery versions greater than or equal-to this version
   --help, -h                    show help
```

#### Remove scheduled query from environment

```properties
$ ./osctrl-cli environment remove-scheduled-query -h
NAME:
   osctrl-cli environment remove-scheduled-query - Remove query from the osquery schedule for an environment

USAGE:
   osctrl-cli environment remove-scheduled-query [command options] [arguments...]

OPTIONS:
   --name value, -n value        Environment name to be updated
   --query-name value, -q value  Query to be removed from the schedule
   --help, -h                    show help
```

#### Add osquery option to environment

```properties
$ ./osctrl-cli environment add-osquery-option -h
NAME:
   osctrl-cli environment add-osquery-option - Add or change an osquery option to the configuration

USAGE:
   osctrl-cli environment add-osquery-option [command options] [arguments...]

OPTIONS:
   --name value, -n value          Environment name to be updated
   --option value, -o value        Option name to be added
   --type value, -t value          Option type for the value (string, int, bool)
   --string-value value, -s value  String value for the option
   --int-value value, -i value     Integer value for the option (default: 0)
   --bool-value, -b                Boolean value for the option (default: false)
   --help, -h                      show help
```

#### Remove osquery option from environment

```properties
$ ./osctrl-cli environment remove-osquery-option -h
NAME:
   osctrl-cli environment remove-osquery-option - Remove an option for the osquery configuration

USAGE:
   osctrl-cli environment remove-osquery-option [command options] [arguments...]

OPTIONS:
   --name value, -n value    Environment name to be updated
   --option value, -o value  Option name to be added
   --help, -h                show help
```

#### Add query pack to environment

```properties
$ ./osctrl-cli environment add-new-pack -h
NAME:
   osctrl-cli environment add-new-pack - Add a new query pack to the osquery configuration

USAGE:
   osctrl-cli environment add-new-pack [command options] [arguments...]

OPTIONS:
   --name value, -n value      Environment name to be updated
   --pack value, -p value      Pack name to be added
   --platform value, -P value  Restrict this pack to a given platform
   --version value, -v value   Only run on osquery versions greater than or equal-to this version
   --shard value, -s value     Restrict this query to a percentage (1-100) of target hosts (default: 0)
   --help, -h                  show help
```

#### Add local query pack to environment

```properties
$ ./osctrl-cli environment add-local-pack -h
NAME:
   osctrl-cli environment add-local-pack - Add a new local query pack to the osquery configuration

USAGE:
   osctrl-cli environment add-local-pack [command options] [arguments...]

OPTIONS:
   --name value, -n value       Environment name to be updated
   --pack value, -p value       Pack name to be added
   --pack-path value, -P value  Local full path to load the query pack within osquery
   --help, -h                   show help
```

#### Remove query pack from environment

```properties
$ ./osctrl-cli environment remove-pack -h
NAME:
   osctrl-cli environment remove-pack - Remove query pack from the osquery configuration

USAGE:
   osctrl-cli environment remove-pack [command options] [arguments...]

OPTIONS:
   --name value, -n value  Environment name to be updated
   --pack value, -p value  Pack name to be removed
   --help, -h              show help
```

#### Add query to pack in environment

```properties
$ ./osctrl-cli environment add-query-to-pack -h
NAME:
   osctrl-cli environment add-query-to-pack - Add a new query to the given query pack

USAGE:
   osctrl-cli environment add-query-to-pack [command options] [arguments...]

OPTIONS:
   --name value, -n value        Environment name to be updated
   --pack value, -p value        Environment to be updated
   --query value, -q value       Query to be added to the pack
   --query-name value, -Q value  Query name to be added to the pack
   --interval value, -i value    Query interval in seconds (default: 0)
   --platform value, -P value    Restrict this query to a given platform
   --version value, -v value     Only run on osquery versions greater than or equal-to this version
   --help, -h                    show help
```

#### Remove query from pack in environment

```properties
$ ./osctrl-cli environment remove-query-from-pack -h
NAME:
   osctrl-cli environment remove-query-from-pack - Remove query from the given query pack

USAGE:
   osctrl-cli environment remove-query-from-pack [command options] [arguments...]

OPTIONS:
   --name value, -n value        Environment name to be updated
   --pack value, -p value        Pack name to be updated
   --query-name value, -q value  Query name to be removed
   --help, -h                    show help
```

#### Delete environment

```properties
$ ./osctrl-cli environment delete -h
NAME:
   osctrl-cli environment delete - Delete an existing TLS environment

USAGE:
   osctrl-cli environment delete [command options] [arguments...]

OPTIONS:
   --name value, -n value  Environment name to be deleted
   --help, -h              show help
```

#### Show environment

```properties
$ ./osctrl-cli environment show -h
NAME:
   osctrl-cli environment show - Show a TLS environment

USAGE:
   osctrl-cli environment show [command options] [arguments...]

OPTIONS:
   --name value, -n value  Environment name to be displayed
   --help, -h              show help
```

#### Show environment flags

```properties
$ ./osctrl-cli environment show-flags -h
NAME:
   osctrl-cli environment show-flags - Show the flags for a TLS environment

USAGE:
   osctrl-cli environment show-flags [command options] [arguments...]

OPTIONS:
   --name value, -n value  Environment name to be displayed
   --help, -h              show help
```

#### Re-generate and update environment flags

```properties
$ ./osctrl-cli environment gen-flags -h
NAME:
   osctrl-cli environment gen-flags - Generate and save the flags for a TLS environment

USAGE:
   osctrl-cli environment gen-flags [command options] [arguments...]

OPTIONS:
   --name value, -n value  Environment name to be displayed
   --help, -h              show help
```

#### List environments

```properties
$ ./osctrl-cli environment list -h
NAME:
   osctrl-cli environment list - List all existing TLS environments

USAGE:
   osctrl-cli environment list [command options] [arguments...]

OPTIONS:
   --help, -h  show help
```

#### Quick-add to environment

```properties
$ ./osctrl-cli environment quick-add -h
NAME:
   osctrl-cli environment quick-add - Generates one-liner for quick adding nodes to environment

USAGE:
   osctrl-cli environment quick-add [command options] [arguments...]

OPTIONS:
   --name value, -n value    Environment name to be used
   --target value, -t value  Type of one-liner (default: "sh")
   --insecure, -i            Generate insecure one-liner (default: false)
   --help, -h                show help
```

#### Flags

```properties
$ ./osctrl-cli environment flags -h
NAME:
   osctrl-cli environment flags - Generates the flags to run nodes in an environment

USAGE:
   osctrl-cli environment flags [command options] [arguments...]

OPTIONS:
   --name value, -n value            Environment name to be used
   --certificate value, --crt value  Certificate path to be used
   --secret value, -s value          Secret file path to be used
   --help, -h                        show help
```

#### Secret

```properties
$ ./osctrl-cli environment secret -h
NAME:
   osctrl-cli environment secret - Output the secret to enroll nodes in an environment

USAGE:
   osctrl-cli environment secret [command options] [arguments...]

OPTIONS:
   --name value, -n value  Environment name to be used
   --help, -h              show help
```
