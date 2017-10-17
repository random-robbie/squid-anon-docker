# squid-anon-docker

A simple Dockerfile for launching an authenticated squid proxy.

The user must specify authentication credentials via the following environment variables:

```
SQUID_USERNAME=foo
SQUID_PASSWORD=bar
```

An example invocation would be:

```
docker run -e SQUID_USERNAME=foo -e SQUID_PASSWORD=bar -p 3128:3128 txt3rob/squid-anon-docker
```

ALL headers from squid are removed to ensure anon.


Uses Alpine Linux.

Details
=======

Environment variables
---------------------

* SQUID_USERNAME
* SQUID_PASSWORD

Ports
-----

* 3128

Volumes
-------

* `/var/log/squid`

