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

All the fields that start with an underscore, will be filled in with a value. Here are the values that can go on each:

* `_SERVICE_NAME`: To identify the service that is file is configuring. It can be `tls` or `admin`,
* `_LISTENER`: Local listener for the service. Usually `127.0.0.1`, but sometimes in docker it could be `0.0.0.0`,
* `_SERVICE_PORT`: Local port for the listener. By default is `9000` for osctrl-tls and `9001` for ostrl-admin,
* `_SERVICE_HOST`: Host or domain that this service will be accesible from,
* `_SERVICE_AUTH`: Type of authentication that will service will implement. Values can be:
  * `none` - No authentication
  * `json` - Users provided in the same JSON configuration file
  * `db` - Users stored and retrieved from backend
  * `saml` - Authentication will be provided using SAML. It requires its own `saml.json` configuration file
  * `headers` - Authentication will be provided verifying headers, using a middleware approach
* `_SERVICE_LOGGING`: Type of logging that each service will implement. Values can be:
  * `none` - No logging, data will be discarded
  * `stdout` - Logs will go to the stdout of the service
  * `db` - Logs will be store in the backend
  * `graylog` - Logs will be sent to [Graylog](https://www.graylog.org/). It requires its own `graylog.json` configuration file
  * `splunk` - Logs will be sent to [Splunk](https://www.splunk.com/). It requires its own `splunk.json` configuration file

{{% notice warning %}}
Logging is implemented using [plugins](https://github.com/javuto/osctrl/tree/master/plugins) and each plugin will require its own configuration.
{{% /notice %}}

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

TLS termination using ngix.

### Metrics

Metrics using [InfluxDB](https://www.influxdata.com/products/influxdb-overview/) + [Telegraf](https://www.influxdata.com/time-series-platform/telegraf/) + [Grafana](https://grafana.com/).

### Logging

Loggity logs.

{{% notice info %}}
Logging is implemented using [plugins](https://github.com/javuto/osctrl/tree/master/plugins) and each plugin will require its own configuration.
{{% /notice %}}
