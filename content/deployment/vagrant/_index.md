+++
title = "Using Vagrant"
date = 2019-08-09T19:23:48+02:00
weight = 1
+++

[Vagrant](https://www.vagrantup.com/) can be used for **osctrl** local development. Execute `vagrant up` to create a local virtual machine running Ubuntu 18.04. Once it has finished deploying, **osctrl** will be ready to be used and you can access it following the instructions in the terminal.

Take a look at the [Vagrantfile](https://github.com/jmpsec/osctrl/blob/master/Vagrantfile) to understand how the local vagrant machine is created and modify to better fit your needs. It will install and configure all components of **osctrl** using the [provision.sh](https://github.com/jmpsec/osctrl/blob/master/deploy/provision.sh) script, and full command used looks as follows:

```sh
./deploy/provision.sh --nginx --postgres -E --metrics -p all --tls-hostname "10.10.10.6" --admin-hostname "10.10.10.6" --password "admin"
```

Once it is done, **osctrl** will be ready to be used using a private IP, and the admin service will be accesible at [https://10.10.10.6:8443/](https://10.10.10.6:8443/) with the credentials `admin/admin`.

Take a look at the [usage](https://www.osctrl.net/usage/provision.sh/) section of `provision.sh` if you need to make changes to the command used with vagrant.
