+++
title = "Using Vagrant"
date = 2019-08-09T19:23:48+02:00
weight = 1
+++

[Vagrant](https://www.vagrantup.com/) can be used for **osctrl** local development. Execute `vagrant up` to create a local virtual machine running Ubuntu 18.04. Once it has finished deploying, **osctrl** will be ready to be used and you can access it following the instructions in the terminal.

Take a look at the [Vagrantfile](https://github.com/jmpsec/osctrl/blob/master/Vagrantfile) to understand how the local vagrant machine is created and to modify it to better fit your needs. It will install and configure all components of **osctrl** using the [provision.sh](https://github.com/jmpsec/osctrl/blob/master/deploy/provision.sh) script. The full command used looks as follows:

```sh
./deploy/provision.sh --nginx --postgres -E --metrics --tls-hostname "10.10.10.6" --admin-hostname "10.10.10.6" --password "admin"
```

According to the [usage](/usage/provision.sh/) of the deployment script, the command above will:

* `--nginx`: Deploy the nginx that is going to be used as TLS termination,
* `--postgres`: Deploy the backend component (PostgreSQL),
* `-E`: Enroll itself in **osctrl**,
* `--metrics`: Deploy the metrics component (Grafana),
* `--tls-hostname "10.10.10.6"`: Use `10.10.10.6` as hostname for osctrl-tls,
* `--admin-hostname "10.10.10.6"`: Use `10.10.10.6` as hostname for osctrl-admin,
* `--password "admin"`: Use `admin` as the administrative user (admin) password.

There are however some options that aren't set given the default values. Those are:

* `-m dev`: Mode is `dev` which means that provision will run in development mode. Certificate will be self-signed,
* `-p all`: All parts will be provisioned, admin and tls.

Once it is done, **osctrl** will be ready to be used using a private IP, and the admin service will be accesible at [https://10.10.10.6:8443/](https://10.10.10.6:8443/) with the credentials `admin/admin`.

Here is the whole output of a successfully executed `vagrant up` command:

<script id="asciicast-263137" src="https://asciinema.org/a/263137.js" async></script>
