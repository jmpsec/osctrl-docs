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
   add, a                         Add a new user
   edit, e                        Edit an existing user
   change-permissions, p, access  Change permission in an environment for an existing user
   reset-permissions, R, reset    Clear and reset permissions for a user in an environment
   show-permissions, S, perms     Show permissions for a user in an environment
   all-permissions, A, all-perms  Show all permissions for an existing user
   delete, d                      Delete an existing user
   show, s                        Show an existing user
   list, l                        List all existing users
   help, h                        Shows a list of commands or help for one command

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
   --username value, -u value     Username for the new user
   --password value, -p value     Password for the new user
   --admin, -a                    Make this user an admin (default: false)
   --environment value, -e value  Default environment for the new user
   --email value, -E value        Email for the new user
   --fullname value, -n value     Full name for the new user
   --help, -h                     show help
```

#### Edit user

```properties
$ ./osctrl-cli user edit -h
NAME:
   osctrl-cli user edit - Edit an existing user

USAGE:
   osctrl-cli user edit [command options] [arguments...]

OPTIONS:
   --username value, -u value        User to be edited
   --password value, -p value        New password to be used
   --email value, -E value           Email to be used
   --fullname value, -n value        Full name to be used
   --admin, -a                       Make this user an admin (default: false)
   --non-admin, -d                   Make this user an non-admin (default: false)
   --environment value, --env value  Default environment for this user
   --help, -h                        show help
```

#### Change permissions

```properties
$ ./osctrl-cli user change-permissions -h
NAME:
   osctrl-cli user change-permissions - Change permission in an environment for an existing user

USAGE:
   osctrl-cli user change-permissions [command options] [arguments...]

OPTIONS:
   --username value, -u value     User to perform the action
   --environment value, -e value  Environment for this user
   --admin, -a                    Grant admin permissions (default: false)
   --user, -U                     Grant user permissions (default: false)
   --query, -q                    Grant query permissions (default: false)
   --carve, -c                    Grant carve permissions (default: false)
   --help, -h                     show help
```

#### Reset permissions

```properties
$ ./osctrl-cli user reset-permissions -h
NAME:
   osctrl-cli user reset-permissions - Clear and reset permissions for a user in an environment

USAGE:
   osctrl-cli user reset-permissions [command options] [arguments...]

OPTIONS:
   --username value, -u value     User to perform the action
   --environment value, -e value  Environment for this user
   --admin, -a                    Grant admin permissions (default: false)
   --user, -U                     Grant user permissions (default: false)
   --query, -q                    Grant query permissions (default: false)
   --carve, -c                    Grant carve permissions (default: false)
   --help, -h                     show help
```

#### Show permissions

```properties
$ ./osctrl-cli user show-permissions -h
NAME:
   osctrl-cli user show-permissions - Show permissions for a user in an environment

USAGE:
   osctrl-cli user show-permissions [command options] [arguments...]

OPTIONS:
   --username value, -u value     User to perform the action
   --environment value, -e value  Environment for this user
   --help, -h                     show help
```

#### All permissions

```properties
$ ./osctrl-cli user all-permissions -h
NAME:
   osctrl-cli user all-permissions - Show all permissions for an existing user

USAGE:
   osctrl-cli user all-permissions [command options] [arguments...]

OPTIONS:
   --username value, -u value  User to perform the action
   --help, -h                  show help
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
   --help, -h                  show help
```

#### Show user

```properties
$ ./osctrl-cli user show -h
NAME:
   osctrl-cli user show - Show an existing user

USAGE:
   osctrl-cli user show [command options] [arguments...]

OPTIONS:
   --username value, -u value  User to be displayed
   --help, -h                  show help
```

#### List users

```properties
$ ./osctrl-cli user list -h
NAME:
   osctrl-cli user list - List all existing users

USAGE:
   osctrl-cli user list [command options] [arguments...]

OPTIONS:
   --help, -h  show help
```
