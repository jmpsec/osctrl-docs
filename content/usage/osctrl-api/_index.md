+++
title = "osctrl-api"
date = 2020-03-02T19:03:05-08:00
weight = 2
pre = ""
+++

`osctrl-api` is the API service for **osctrl**.

Execute `./osctrl-api -h` to show the main help of the program:

```properties
$ ./osctrl-api -h
NAME:
   osctrl-api - API service for osctrl

USAGE: osctrl-api [global options] [arguments...]

VERSION:
   0.2.3

DESCRIPTION:
   API service for osctrl, a fast and efficient osquery management

GLOBAL OPTIONS:
  -D string
    	DB configuration JSON file to use. (default "config/db.json")
  -J string
    	JWT configuration JSON file to use. (default "config/jwt.json")
  -c string
    	Service configuration JSON file to use. (default "config/api.json")
  -v	Displays the binary version.
```
