A Dockerized Prometheus Image for Raspberry Pi 3B+.

Prometheus is a systems and service monitoring system. It collects metrics from configured targets at given intervals, evaluates rule expressions, displays the results, and can trigger alerts if some condition is observed to be true.

In case you are Raspberry Pi user and want to try it, check this out !

Features
Prometheus's main features are:

a multi-dimensional data model (time series identified by metric name and key/value pairs)
a flexible query language to leverage this dimensionality
no reliance on distributed storage; single server nodes are autonomous
time series collection happens via a pull model over HTTP
pushing time series is supported via an intermediary gateway
targets are discovered via service discovery or static configuration
multiple modes of graphing and dashboarding support
To learn more, refer : https://prometheus.io/docs/introduction/overview/

Tested Platform
Raspberry Pi 3b+

How to run this Docker Image?

$ docker build -t prometheus-armv7 .

$ docker run -d --net=host -v `pwd`/prometheus.yml:/etc/prometheus/prometheus.yml prometheus-armv7

$ docker run -it --volume=/:/rootfs:ro --volume=/var/run:/var/run:rw --volume=/sys:/sys:ro --volume=/var/lib/docker/:/var/lib/docker:ro --publish=8080:8080 cadvisor-armv7:latest
