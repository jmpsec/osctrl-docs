+++
title = "dockerize.sh"
date = 2019-08-11T13:16:16+02:00
weight = 5
pre = ""
+++

[dockerize.sh](https://github.com/jmpsec/osctrl/blob/master/docker/dockerize.sh) is the provisioning script for **osctrl** in a Docker environment. It needs a [docker-compose.yml](https://github.com/jmpsec/osctrl/blob/master/docker/docker-compose.yml) and requires `docker-compose` to be installed.

It uses several functions from [/deploy/lib.sh](https://github.com/jmpsec/osctrl/blob/master/deploy/lib.sh). The main idea behind using a helper like this is to be able to generate configurations and certificates before launching the containers. For a pure docker or k8s environment just use each `Dockerfile` as reference.

Execute `./docker/dockerize.sh -h` to show the usage of the script:

```properties
$ ./docker/dockerize.sh -h

Usage: ./deploy/docker/dockerize.sh -h [PARAMETER] [PARAMETER] ...

Parameters:
  -h	Shows this help message and exit.
  -b	Builds new docker containers.
  -u	Run existing osctrl containers.
  -f	Forces the generation of new certificates.
  -J	Generates new JWT secret.
  -m	Uses mkcert (https://github.com/FiloSottile/mkcert) to generate a certificate and trust it locally.
  -d	Takes down running osctrl containers.
  -x	Removes container images.
  -C	Existing certificate to be used with osctrl.
  -K	Existing private key to be used with osctrl.
  -D	Build development environment.

Examples:
  Run dockerized osctrl building new containers and forcing to generate new certificates:
	./deploy/docker/dockerize.sh -u -b -f
  Run existing containers with existing certificates:
	./deploy/docker/dockerize.sh -u -C cert.crt -K private.key
```

There are good examples of the usage of `dockerize.sh` in the [Makefile](https://github.com/jmpsec/osctrl/blob/master/Makefile).
