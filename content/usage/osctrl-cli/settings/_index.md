+++
title = "settings"
date = 2019-08-17T11:58:09-07:00
weight = 3
pre = ""
+++

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

#### Add setting

```properties
$ ./osctrl-cli settings add -h
NAME:
   osctrl-cli settings add - Add a new settings value

USAGE:
   osctrl-cli settings add [command options] [arguments...]

OPTIONS:
   --name value, -n value     Value name to be added
   --service value, -s value  Value service to be added
   --type value, -t value     Value type to be added
   --string value             Value string
   --integer value            Value integer (default: 0)
   --boolean                  Value boolean
   --info value, -i value     Setting info
```

#### Update setting

```properties
$ ./osctrl-cli settings update -h
NAME:
   osctrl-cli settings update - Update a configuration value

USAGE:
   osctrl-cli settings update [command options] [arguments...]

OPTIONS:
   --name value, -n value     Value name to be updated
   --service value, -s value  Value service to be updated
   --type value, -t value     Value type to be updated
   --string value             Value string
   --integer value            Value integer (default: 0)
   --true                     Value boolean true
   --false                    Value boolean false
   --info value, -i value     Setting info
```

#### Delete setting

```properties
$ ./osctrl-cli settings delete -h
NAME:
   osctrl-cli settings delete - Delete an existing configuration value

USAGE:
   osctrl-cli settings delete [command options] [arguments...]

OPTIONS:
   --name value, -n value     Value name to be deleted
   --service value, -s value  Value service to be deleted
```

#### Show settings

```properties
$ ./osctrl-cli settings show -h
NAME:
   osctrl-cli settings show - Show all configuration values

USAGE:
   osctrl-cli settings show [arguments...]
```
