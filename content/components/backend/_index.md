+++
title = "Backend"
date = 2019-08-10T12:51:06+02:00
weight = 5
pre = ""
+++

<p align="center">

  <img src="/backend.png" style="width:75%; margin: 0;"/>

</p>

---

The backend component provides a centralized place where all the **osctrl** data is stored. In the diagram above, it is displayed with a [PostgreSQL](https://www.postgresql.org/) logo, and in fact, the default provisioning of **osctrl** does install PostgreSQL 9.6 as backend. However, the code that handles database access uses [GORM](http://gorm.io/) so the changes to make **osctrl** work with a different backend solution would be minimal.

Each component uses the backend differently but all of them have read/write operations.
