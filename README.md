# osctrl

<p align="center">
  <img alt="osctrl" src="logo.png" width="300" />
  <p align="center">
    Fast and efficient osquery management.
  </p>
  <p align="center">
    <a href="https://github.com/jmpsec/osctrl/blob/master/LICENSE.md">
      <img alt="Software License" src="https://img.shields.io/badge/license-GPL3-brightgreen.svg?style=flat-square">
    </a>
    <a href="https://travis-ci.org/jmpsec/osctrl">
      <img alt="Travis" src="https://img.shields.io/travis/jmpsec/osctrl/master.svg?style=flat-square">
    </a>
    <a href="https://goreportcard.com/report/github.com/jmpsec/osctrl">
      <img alt="Go Report Card" src="https://goreportcard.com/badge/github.com/jmpsec/osctrl?style=flat-square&fuckgithubcache=1">
    </a>
  </p>
</p>

## osctrl-docs

Documentation for [osctrl](https://github.com/jmpsec/osctrl): https://osctrl.net

## Generating docs

The documentation is generated using [hugo](https://gohugo.io/) and you will have to [install](https://gohugo.io/getting-started/installing/) it.

Once it is ready, you can use the `Makefile` to render your changes into the HTML documentation issuing the command `make docs`.

## Serve docs

To see how the documentation will look like before submitting your changes, you can serve it locally. Using the `Makefile` issue the command `make serve` and the documentation will be generated and served locally.
