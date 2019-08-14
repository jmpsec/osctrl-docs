+++
title = "Using Docker"
date = 2019-08-09T19:23:53+02:00
weight = 2
+++

You can use docker to run **osctrl** and each component has a separate `Dockerfile` to run independently. Also there is a [docker-compose.yml](https://github.com/jmpsec/osctrl/blob/master/docker/docker-compose.yml) that ties all the components together, to serve a functional deployment.

Using the [Makefile](https://github.com/jmpsec/osctrl/blob/master/Makefile)
