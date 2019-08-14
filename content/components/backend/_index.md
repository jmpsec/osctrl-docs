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

The backend component provides a centralized place where all the **osctrl** data is stored. In the diagram above, it is displayed with a PostgreSQL logo, and in fact, the default provisioning of **osctrl** does install postgres as backend. However, the code that handles database access, uses [GORM](http://gorm.io/) so the changes to make **osctrl** work with a different backend solution would be minimal.
