+++
title = "nginx"
date = 2019-08-10T12:50:57+02:00
weight = 4
pre = ""
+++

<p align="center">

  <img src="/nginx.png" style="width:75%; margin: 0;"/>

</p>

---

The nginx component performs the task of TLS termination for the **osctrl** services. If your network has many nodes enrolled in **osctrl**, most likely your TLS service ([osctrl-tls](/components/osctrl-tls/)) will receive a large number of requests per second, and on top of TLS termination, this component can then also act as load balancer.
