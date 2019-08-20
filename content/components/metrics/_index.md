+++
title = "Metrics"
date = 2019-08-10T12:51:10+02:00
weight = 6
pre = ""
+++

<p align="center">

  <img src="/metrics.png" style="width:75%; margin: 0;"/>

</p>

---

The metrics component of **osctrl** provides instrumentation for the following operations:

* Receiving requests to osctrl-tls,
* Receiving requests to osctrl-admin,
* Generating errors during normal operations both in osctrl-tls and osctrl-admin.

Note that if the number of enrolled nodes is large enough, these metrics will generate valuable data to assess the performance of **osctrl**.

The default provisioning of **osctrl** does install [InfluxDB](https://www.influxdata.com/products/influxdb-overview/) + [Telegraf](https://www.influxdata.com/time-series-platform/telegraf/) + [Grafana](https://grafana.com/) to act as the metrics component, but any monitoring solution that follows the push model, should work as well.
