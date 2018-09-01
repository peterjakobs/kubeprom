#FROM resin/rpi-raspbian:latest
#FROM resin/rpi-raspbian:wheezy-20180815
FROM resin/rpi-raspbian:stretch-20180815

MAINTAINER "Peter Jakobs" <peterjakobs67@gmail.com>

RUN apt-get update && apt-get install -qy curl ca-certificates

RUN curl -sSLO https://github.com/prometheus/alertmanager/releases/download/v0.15.2/alertmanager-0.15.2.linux-armv7.tar.gz && \
   tar -xvf alertmanager-0.15.2.linux-armv7.tar.gz -C /root/prometheus/ --strip-components=1 && \
   rm alertmanager-0.15.2.linux-armv7.tar.gz

WORKDIR /root/alertmanager

RUN mkdir /etc/alertmanager

RUN cp alertmanager               /bin/alertmanager
RUN cp config.yml    /etc/alertmanager/config.yml

EXPOSE     9093
VOLUME     [ "/alertmanager" ]
WORKDIR    /alertmanager
ENTRYPOINT [ "/bin/alertmanager" ]
CMD        [ "-config.file=/etc/alertmanager/config.yml", \
             "-storage.path=/alertmanager" ]
