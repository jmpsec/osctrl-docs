+++
title = "user"
date = 2019-08-17T11:57:51-07:00
weight = 11
pre = ""
+++

### User

```properties
$ ./bin/osctrl-cli user -h
NAME:
   osctrl-cli user - Commands for users

USAGE:
   osctrl-cli user [command options]

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
   --help, -h  Show help (default: false)
```

#### Add user

```properties
$ ./bin/osctrl-cli user add -h
NAME:
   osctrl-cli user add - Add a new user

USAGE:
   osctrl-cli user add [command options]

OPTIONS:
   --username value, -u value     Username for the new user
   --password value, -p value     Password for the new user
   --global-admin, -a, --admin    Make this user a global admin (default: false)
   --service, -s                  Make this user a service account (default: false)
   --environment value, -e value  Grant read access to this environment
   --email value, -E value        Email for the new user
   --fullname value, -n value     Full name for the new user
   --help, -h                     Show help (default: false)
```

#### Edit user

```properties
$ ./bin/osctrl-cli user edit -h
NAME:
   osctrl-cli user edit - Edit an existing user

USAGE:
   osctrl-cli user edit [command options]

OPTIONS:
   --username value, -u value        User to be edited
   --password value, -p value        New password to be used
   --email value, -E value           Email to be used
   --fullname value, -n value        Full name to be used
   --global-admin, -a, --admin       Make this user an admin (default: false)
   --non-admin, -d                   Make this user an non-admin (default: false)
   --service, -s                     Make this user a service account (default: false)
   --non-service, -S                 Make this user a non-service account (default: false)
   --environment value, --env value  Grant read access to this environment
   --help, -h                        Show help (default: false)
```

#### Change permissions

```properties
$ ./bin/osctrl-cli user change-permissions -h
NAME:
   osctrl-cli user change-permissions - Change permission in an environment for an existing user

USAGE:
   osctrl-cli user change-permissions [command options]

OPTIONS:
   --username value, -u value     User to perform the action
   --environment value, -e value  Environment for this user
   --admin, -a                    Grant admin permissions (default: false)
   --user, -U                     Grant user permissions (default: false)
   --query, -q                    Grant query permissions (default: false)
   --carve, -c                    Grant carve permissions (default: false)
   --help, -h                     Show help (default: false)
```

#### Reset permissions

```properties
$ ./bin/osctrl-cli user reset-permissions -h
NAME:
   osctrl-cli user reset-permissions - Clear and reset permissions for a user in an environment

USAGE:
   osctrl-cli user reset-permissions [command options]

OPTIONS:
   --username value, -u value     User to perform the action
   --environment value, -e value  Environment for this user
   --admin, -a                    Grant admin permissions (default: false)
   --user, -U                     Grant user permissions (default: false)
   --query, -q                    Grant query permissions (default: false)
   --carve, -c                    Grant carve permissions (default: false)
   --help, -h                     Show help (default: false)
```

#### Show permissions

```properties
$ ./bin/osctrl-cli user show-permissions -h
NAME:
   osctrl-cli user show-permissions - Show permissions for a user in an environment

USAGE:
   osctrl-cli user show-permissions [command options]

OPTIONS:
   --username value, -u value     User to perform the action
   --environment value, -e value  Environment for this user
   --help, -h                     Show help (default: false)
```

#### All permissions

```properties
$ ./bin/osctrl-cli user all-permissions -h
NAME:
   osctrl-cli user all-permissions - Show all permissions for an existing user

USAGE:
   osctrl-cli user all-permissions [command options]

OPTIONS:
   --username value, -u value  User to perform the action
   --help, -h                  Show help (default: false)
```

#### Delete user

```properties
$ ./bin/osctrl-cli user delete -h
NAME:
   osctrl-cli user delete - Delete an existing user

USAGE:
   osctrl-cli user delete [command options]

OPTIONS:
   --username value, -u value  User to be deleted
   --help, -h                  Show help (default: false)
```

#### Show user

```properties
$ ./bin/osctrl-cli user show -h
NAME:
   osctrl-cli user show - Show an existing user

USAGE:
   osctrl-cli user show [command options]

OPTIONS:
   --username value, -u value  User to be displayed
   --help, -h                  Show help (default: false)
```

#### List users

```properties
$ ./bin/osctrl-cli user list -h
NAME:
   osctrl-cli user list - List all existing users

USAGE:
   osctrl-cli user list [command options]

OPTIONS:
   --help, -h  Show help (default: false)
```
