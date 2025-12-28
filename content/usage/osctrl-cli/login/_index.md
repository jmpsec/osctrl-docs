+++
title = "login"
date = 2024-11-04T12:21:37+01:00
weight = 6
pre = ""
+++

### Login

```properties
$ ./osctrl-cli login -h
NAME:
   osctrl-cli login - Login into API and generate JSON config file with token

USAGE:
   osctrl-cli login [options]

OPTIONS:
   --username string, -u string     User to be used in login
   --url string, -U string          URL to be used in login
   --environment string, -e string  Environment to be used in login
   --expiration int, -E int         Expiration in hours (0 for server default) (default: 6)
   --write-api-file, -w             Write API configuration to JSON file
   --help, -h                       show help
```
