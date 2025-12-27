+++
title = "tag"
date = 2021-01-10T21:52:54+01:00
weight = 10
pre = ""
+++

### Tags

```properties
$ ./osctrl-cli tag -h
NAME:
   osctrl-cli tag - Commands for tags

USAGE:
   osctrl-cli tag command [command options] [arguments...]

COMMANDS:
   add, a       Add a new tag
   edit, e      Edit values for an existing tag
   delete, d    Delete an existing tag
   list, l      List all tags by environment
   list-all, L  List all tags in osctrl
   show, s      Show an existing tag
   help, h      Shows a list of commands or help for one command

OPTIONS:
   --help, -h  show help
```

#### Add tag

```properties
$ ./osctrl-cli tag add -h
NAME:
   osctrl-cli tag add - Add a new tag

USAGE:
   osctrl-cli tag add [command options] [arguments...]

OPTIONS:
   --name value, -n value                    Tage name to be used
   --env-uuid value, -e value                Environment UUID to be used
   --icon value, -i value                    Fontawesome icon to be used (default: "fas fa-tag")
   --color value, -c value                   HTML color to be used. If not provided it will be randomly generated
   --description value, -d value             Tag description to be used
   --tag-type value, -t value, --type value  Tag type to be used. It can be 'env', 'uuid', 'platform', 'localname' and 'custom' (default: "custom")
   --help, -h                                show help
```

#### Edit tag

```properties
$ ./osctrl-cli tag edit -h
NAME:
   osctrl-cli tag edit - Edit values for an existing tag

USAGE:
   osctrl-cli tag edit [command options] [arguments...]

OPTIONS:
   --name value, -n value                    Tage name to be used
   --env-uuid value, -e value                Environment UUID to be used
   --icon value, -i value                    Fontawesome icon to be used
   --color value, -c value                   HTML color to be used. If not provided it will be randomly generated
   --description value, -d value             Tag description to be used
   --tag-type value, -t value, --type value  Tag type to be used. It can be 'env', 'uuid', 'platform', 'localname' and 'custom'
   --help, -h                                show help
```

#### Delete tag

```properties
$ ./osctrl-cli tag delete -h
NAME:
   osctrl-cli tag delete - Delete an existing tag

USAGE:
   osctrl-cli tag delete [command options] [arguments...]

OPTIONS:
   --name value, -n value      Tag name to be deleted
   --env-uuid value, -e value  Environment UUID to be used
   --help, -h                  show help
```

#### List tags

```properties
$ ./osctrl-cli tag list -h
NAME:
   osctrl-cli tag list - List all tags by environment

USAGE:
   osctrl-cli tag list [command options] [arguments...]

OPTIONS:
   --env-uuid value, -e value  Environment UUID to be used
   --help, -h                  show help
```

#### List all tags

```properties
$ ./osctrl-cli tag list-all -h
NAME:
   osctrl-cli tag list-all - List all tags in osctrl

USAGE:
   osctrl-cli tag list-all [command options] [arguments...]

OPTIONS:
   --help, -h  show help
```

#### Show tag

```properties
$ ./osctrl-cli tag show -h
NAME:
   osctrl-cli tag show - Show an existing tag

USAGE:
   osctrl-cli tag show [command options] [arguments...]

OPTIONS:
   --name value, -n value      Tag name to be displayed
   --env-uuid value, -e value  Environment UUID to be used
   --help, -h                  show help
```
