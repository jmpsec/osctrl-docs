+++
title = "dockerize.sh"
date = 2019-08-11T13:16:16+02:00
weight = 5
pre = ""
+++

[dockerize.sh](https://github.com/jmpsec/osctrl/blob/master/docker/dockerize.sh) is the provisioning script for **osctrl** in a Docker environment. It needs a [docker-compose.yml](https://github.com/jmpsec/osctrl/blob/master/docker/docker-compose.yml) and requires `docker-compose` to be installed.

It uses several functions from [/deploy/lib.sh](https://github.com/jmpsec/osctrl/blob/master/deploy/lib.sh).

Execute `./docker/dockerize.sh -h` to show the usage of the script:

```properties
$ ./docker/dockerize.sh -h

Usage: ./docker/dockerize.sh -h [PARAMETER] [PARAMETER] ...

Parameters:
  -h	Shows this help message and exit.
  -b	Builds new docker containers.
  -u	Run osctrl containers.
  -c	Generates configuration files.
  -f	Forces the generation of new certificates and configuration.
  -m	Uses mkcert (https://github.com/FiloSottile/mkcert) to generate certificate.
  -d	Takes down running containers.
  -x	Removes container images.

Examples:
  Run dockerized osctrl building new containers and forcing to generate new configuration/certs:
	./docker/dockerize.sh -u -b -f
  Generate only configuration files:
	./docker/dockerize.sh -c
```

There are good examples of the usage of `dockerize.sh` in the [Makefile](https://github.com/jmpsec/osctrl/blob/master/Makefile).
