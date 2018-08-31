#FROM resin/rpi-raspbian:latest
#FROM resin/rpi-raspbian:wheezy-20180815
FROM resin/rpi-raspbian:stretch-20180815

MAINTAINER "Peter Jakobs" <peterjakobs67@gmail.com>

RUN apt-get update && apt-get install -qy curl ca-certificates

RUN curl -sSLO https://github.com/prometheus/node_exporter/releases/download/v0.16.0/node_exporter-0.16.0.linux-armv7.tar.gz && \
   tar -xvf node_exporter-0.16.0.linux-armv7.tar.gz --strip-components=1 && \
   rm node_exporter-0.16.0.linux-armv7.tar.gz

RUN mv ./node_exporter /bin/ 


EXPOSE 9100
USER nobody
ENTRYPOINT [ "/bin/node_exporter" ]
CMD ["--no-collector.wifi", \
     "--no-collector.zfs", \
     "--no-collector.infiniband" ]
