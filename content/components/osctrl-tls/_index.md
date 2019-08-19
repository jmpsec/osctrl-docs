+++
title = "osctrl-tls"
date = 2019-08-09T16:56:40+02:00
weight = 1
pre = ""
+++

<p align="center">

  <img src="/osctrl-tls.png" style="width:75%; margin: 0;"/>

</p>

---

The osctrl-tls component is the actual TLS endpoint that implements the [remote API](https://osquery.readthedocs.io/en/stable/deployment/remote/) of [osquery](https://osquery.io).

Inside of the osctrl-tls, you can run a number of TLS endpoints, to group the nodes that will enroll in each of them. Within **osctrl** this concept is called an **environment**.

Each **environment** implements handlers to manage the following actions:

* Enroll nodes,
* Serve osquery configuration to enrolled nodes,
* Log osquery status messages and osquery results from enrolled nodes,
* Run on-demand queries in enrolled nodes and collect results,
* Perform file carving operations in enrolled nodes.

Inside **osctrl** there can be *many* environments, like a typical environment where you have corporate and production systems. Then you would have one environment for corp, and another one for prod. The reasoning is, if you may need to distribute different configurations to the enrolled nodes, then you should use different environments.
