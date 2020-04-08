+++
title = "Using provision.sh"
date = 2019-08-09T19:24:35+02:00
weight = 3
+++

If you want to deploy **osctrl** in your own environment, you can use the [provision.sh](https://github.com/jmpsec/osctrl/blob/master/deploy/provision.sh) to install all necessary dependencies and to configure all components.

It is a good idea to take a look at the [usage](/usage/provision.sh/) of the provisioning script to understand all the options and all the parameters. Check out also how the same script is used with [vagrant](/deployment/vagrant/) to deploy **osctrl** in a local virtual machine, with all components installed and configured.

### Examples

The most common use case for provisioning **osctrl** is very similar to how it gets provisioned for [vagrant](/deployment/vagrant/), which means in dev mode and using self-signed certificates.
