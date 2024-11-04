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
   node-actions            Node enroll actions for an environment
   delete, d               Delete an existing TLS environment
   show, s                 Show a TLS environment
   list, l                 List all existing TLS environments
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
   --name value, -n value            Environment name to be updated
   --debug, -d                       Environment debug capability (default: false)
   --enroll, -e                      Environment enroll capability (default: false)
   --hostname value, --host value    Environment host to be updated
   --logging value, -l value         Logging interval in seconds (default: 0)
   --config value, -c value          Config interval in seconds (default: 0)
   --query value, -q value           Query interval in seconds (default: 0)
   --deb value, --deb-package value  DEB package to be updated
   --rpm value, --rpm-package value  RPM package to be updated
   --msi value, --msi-package value  MSI package to be updated
   --pkg value, --pkg-package value  PKG package to be updated
   --help, -h                        show help
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

#### Node actions

```properties
$ ./osctrl-cli environment node-actions -h
NAME:
   osctrl-cli environment node-actions - Node enroll actions for an environment

USAGE:
   osctrl-cli environment node-actions command [command options] [arguments...]

COMMANDS:
   show-flags, s         Show the enroll flags for a TLS environment
   new-flags, f          Generate new enroll flags and save them for a TLS environment
   gen-flags, F          Generate and show the enroll flags for a TLS environment
   quick-add, q          Generates one-liner for quick enrolling nodes to a TLS environment
   extend-enroll, f      Extend the existing enroll URL for a TLS environment
   rotate-enroll, f      Rotate to a new enroll URL for a TLS environment
   expire-enroll, f      Expire the existing enroll URL for a TLS environment
   notexpire-enroll, f   Set the existing enroll URL for a TLS environment to NOT expire
   quick-remove, Q       Generates one-liner for quick removing nodes to a TLS environment
   extend-remove, f      Extend the existing enroll URL for a TLS environment
   rotate-remove, f      Rotate to a new enroll URL for a TLS environment
   expire-remove, f      Expire the existing remove URL for a TLS environment
   notexpire-remove, f   Set the existing remove URL for a TLS environment to NOT expire
   secret, x             Output the secret to enroll nodes in an environment
   certificate, c, cert  Output the certificate to enroll nodes in an environment
   help, h               Shows a list of commands or help for one command

OPTIONS:
   --name value, -n value  Environment name to be updated
   --help, -h              show help
```

##### Show flags

```properties
$ ./osctrl-cli environment node-actions show-flags -h
NAME:
   osctrl-cli environment node-actions show-flags - Show the enroll flags for a TLS environment

USAGE:
   osctrl-cli environment node-actions show-flags [command options] [arguments...]

OPTIONS:
   --help, -h  show help
```

##### New flags

```properties
$ ./osctrl-cli environment node-actions new-flags -h
NAME:
   osctrl-cli environment node-actions new-flags - Generate new enroll flags and save them for a TLS environment

USAGE:
   osctrl-cli environment node-actions new-flags [command options] [arguments...]

OPTIONS:
   --help, -h  show help
```

##### Generate flags

```properties
$ ./osctrl-cli environment node-actions gen-flags -h
NAME:
   osctrl-cli environment node-actions gen-flags - Generate and show the enroll flags for a TLS environment

USAGE:
   osctrl-cli environment node-actions gen-flags [command options] [arguments...]

OPTIONS:
   --certificate value, --crt value  Certificate file path to be used
   --secret value, -s value          Secret file path to be used
   --help, -h                        show help
```

##### Quick add

```properties
$ ./osctrl-cli environment node-actions quick-add -h
NAME:
   osctrl-cli environment node-actions quick-add - Generates one-liner for quick enrolling nodes to a TLS environment

USAGE:
   osctrl-cli environment node-actions quick-add [command options] [arguments...]

OPTIONS:
   --target value, -t value  Type of one-liner script (default: "sh")
   --insecure, -i            Generate insecure one-liner, without HTTPS (default: false)
   --help, -h                show help
```

##### Extend enroll

```properties
$ ./osctrl-cli environment node-actions extend-enroll -h
NAME:
   osctrl-cli environment node-actions extend-enroll - Extend the existing enroll URL for a TLS environment

USAGE:
   osctrl-cli environment node-actions extend-enroll [command options] [arguments...]

OPTIONS:
   --help, -h  show help
```

##### Rotate enroll

```properties
$ ./osctrl-cli environment node-actions rotate-enroll -h
NAME:
   osctrl-cli environment node-actions rotate-enroll - Rotate to a new enroll URL for a TLS environment

USAGE:
   osctrl-cli environment node-actions rotate-enroll [command options] [arguments...]

OPTIONS:
   --help, -h  show help
```

##### Expire enroll

```properties
$ ./osctrl-cli environment node-actions expire-enroll -h
NAME:
   osctrl-cli environment node-actions expire-enroll - Expire the existing enroll URL for a TLS environment

USAGE:
   osctrl-cli environment node-actions expire-enroll [command options] [arguments...]

OPTIONS:
   --help, -h  show help
```

##### Not expire enroll

```properties
$ ./osctrl-cli environment node-actions notexpire-enroll -h
NAME:
   osctrl-cli environment node-actions notexpire-enroll - Set the existing enroll URL for a TLS environment to NOT expire

USAGE:
   osctrl-cli environment node-actions notexpire-enroll [command options] [arguments...]

OPTIONS:
   --help, -h  show help
```

##### Quick remove

```properties
$ ./osctrl-cli environment node-actions quick-remove -h
NAME:
   osctrl-cli environment node-actions quick-remove - Generates one-liner for quick removing nodes to a TLS environment

USAGE:
   osctrl-cli environment node-actions quick-remove [command options] [arguments...]

OPTIONS:
   --target value, -t value  Type of one-liner script (default: "sh")
   --insecure, -i            Generate insecure one-liner, without HTTPS (default: false)
   --help, -h                show help
```

##### Extend remove

```properties
$ ./osctrl-cli environment node-actions extend-remove -h
NAME:
   osctrl-cli environment node-actions extend-remove - Extend the existing enroll URL for a TLS environment

USAGE:
   osctrl-cli environment node-actions extend-remove [command options] [arguments...]

OPTIONS:
   --help, -h  show help
```

##### Rotate remove

```properties
$ ./osctrl-cli environment node-actions rotate-remove -h
NAME:
   osctrl-cli environment node-actions rotate-remove - Rotate to a new enroll URL for a TLS environment

USAGE:
   osctrl-cli environment node-actions rotate-remove [command options] [arguments...]

OPTIONS:
   --help, -h  show help
```

##### Expire remove

```properties
$ ./osctrl-cli environment node-actions expire-remove -h
NAME:
   osctrl-cli environment node-actions expire-remove - Expire the existing remove URL for a TLS environment

USAGE:
   osctrl-cli environment node-actions expire-remove [command options] [arguments...]

OPTIONS:
   --help, -h  show help
```

##### Not expire remove

```properties
$ ./osctrl-cli environment node-actions notexpire-remove -h
NAME:
   osctrl-cli environment node-actions notexpire-remove - Set the existing remove URL for a TLS environment to NOT expire

USAGE:
   osctrl-cli environment node-actions notexpire-remove [command options] [arguments...]

OPTIONS:
   --help, -h  show help
```

##### Secret

```properties
$ ./osctrl-cli environment node-actions secret -h
NAME:
   osctrl-cli environment node-actions secret - Output the secret to enroll nodes in an environment

USAGE:
   osctrl-cli environment node-actions secret [command options] [arguments...]

OPTIONS:
   --help, -h  show help
```

##### Certificate

```properties
$ ./osctrl-cli environment node-actions certificate -h
NAME:
   osctrl-cli environment node-actions certificate - Output the certificate to enroll nodes in an environment

USAGE:
   osctrl-cli environment node-actions certificate [command options] [arguments...]

OPTIONS:
   --help, -h  show help
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
