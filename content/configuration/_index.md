+++
title = "Configuration"
date = 2019-07-30T21:50:27-04:00
weight = 3
pre = "<b>3. </b>"
+++

Each [component](/components/) of **osctrl** requires a separate configuration in order to operate properly. During deployment, each configuration will be generated using templates and some helper functions that are part of the provisioning tools.

### service.json

The configuration of the service applies both to [osctrl-tls](/components/osctrl-tls/) and [osctrl-admin](/components/osctrl-admin/) and it is expected to be named by default `tls.json` and `admin.json` respectively. However those default values can be modified, and a different filename may be specified, using the right parameter.

The format of those files follows the [template](https://github.com/jmpsec/osctrl/blob/master/deploy/service.json):

```json
{
  "_SERVICE_NAME": {
    "listener": "_LISTENER",
    "port": "_SERVICE_PORT",
    "host": "_SERVICE_HOST",
    "auth": "_SERVICE_AUTH",
    "logging": "_SERVICE_LOGGING"
  }
}
```

If you want to use the helper functions that are part of the provisioning process, first you have to import the [lib.sh](https://github.com/jmpsec/osctrl/blob/master/deploy/lib.sh), like so:

```bash
$ source deploy/lib.sh
```

And now just call the function `configuration_service` with the correct parameters, for example:

```bash
$ configuration_service "deploy/service.json" "admin.json" "localhost|9001" "admin" "0.0.0.0" "db" "db"
```

For other examples you can see how this is done during the deployment process, for the [admin](https://github.com/jmpsec/osctrl/blob/master/deploy/provision.sh#L517) and the [tls](https://github.com/jmpsec/osctrl/blob/master/deploy/provision.sh#L499) components.

### Backend access

The access to the backend service applies to [osctrl-tls](/components/osctrl-tls/), [osctrl-admin](/components/osctrl-admin/) and [osctrl-cli](/components/osctrl-cli/) considering that they all access the data stored in the backend component.

Similar to the service configuration, there is a [template](https://github.com/jmpsec/osctrl/blob/master/deploy/db.json):

```json
{
  "db": {
    "host": "_DB_HOST",
    "port": "_DB_PORT",
    "name": "_DB_NAME",
    "username": "_DB_USERNAME",
    "password": "_DB_PASSWORD",
    "max_idle_conns": 20,
    "max_open_conns": 100,
    "conn_max_lifetime": 30
  }
}
```

### nginx

### Metrics

### Logging
