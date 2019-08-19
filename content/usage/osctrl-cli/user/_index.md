+++
title = "user"
date = 2019-08-17T11:57:51-07:00
weight = 1
pre = ""
+++

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
