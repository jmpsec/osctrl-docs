+++
title = "osctrl-tls"
date = 2019-08-10T19:03:05+02:00
weight = 1
pre = ""
+++

`osctrl-tls` is the TLS service for **osctrl**.

Execute `./osctrl-tls -h` to show the main help of the program:

```properties
$ ./osctrl-tls -h
NAME:
   osctrl-tls - TLS service for osctrl

USAGE: osctrl-tls [global options] [arguments...]

DESCRIPTION:
   TLS service for osctrl, a fast and efficient osquery management

GLOBAL OPTIONS:
  -D string
    	DB configuration JSON file to use. (default "config/db.json")
  -c string
    	Service configuration JSON file to use. (default "config/tls.json")
  -v	Displays the binary version.
```
