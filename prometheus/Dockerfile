#FROM resin/rpi-raspbian:latest
#FROM resin/rpi-raspbian:wheezy-20180815
#FROM resin/rpi-raspbian:stretch-20180815
FROM resin/armv7hf-debian:stretch

MAINTAINER "Peter Jakobs" <peterjakobs67@gmail.com>

#RUN apt-get update && apt-get install -qy curl ca-certificates && apt-get clean

RUN mkdir /root/prometheus

RUN curl -sSLO https://github.com/prometheus/prometheus/releases/download/v2.4.3/prometheus-2.4.3.linux-armv7.tar.gz && \
   tar -xvf prometheus-2.4.3.linux-armv7.tar.gz -C /root/prometheus/ --strip-components=1 && \
   rm prometheus-2.4.3.linux-armv7.tar.gz

WORKDIR /root/prometheus

RUN mkdir -p /usr/share/prometheus && mkdir -p /etc/prometheus && mv ./prometheus /bin/ && mv ./promtool /bin/ && mv ./console_libraries /usr/share/prometheus/ && mv ./consoles /usr/share/prometheus/ && ln -s /usr/share/prometheus/console_libraries /etc/prometheus/console_libraries && ln -s /usr/share/prometheus/consoles /etc/prometheus/consoles

EXPOSE 9090
VOLUME [ "/prometheus" ]
WORKDIR /prometheus
ENTRYPOINT [ "/bin/prometheus" ]
CMD ["--config.file=/etc/prometheus/prometheus.yml", \
     "--storage.tsdb.path=/prometheus", \
     "--web.console.libraries=/etc/prometheus/console_libraries", \
     "--web.console.templates=/etc/prometheus/consoles" ]
