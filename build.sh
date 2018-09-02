#  docker build -t peterjakobs/prometheus-armv7:2.3.2 .
#  docker push peterjakobs/prometheus-armv7:2.3.2
docker run --rm -d --name prometheus --net=host -v `pwd`/prometheus/prometheus.yml:/etc/prometheus/prometheus.yml peterjakobs/prometheus-armv7:2.3.2

#  docker build -t peterjakobs/alert-manager-armv7:v0.15.2 .
#  docker push peterjakobs/alert-manager-armv7:v0.15.2
docker run --rm -d --name altermanager --net=host peterjakobs/alert-manager-armv7:v0.15.2

#  docker build -t peterjakobs/cadvisor-armv7:latest .
#  docker push peterjakobs/cadvisor-armv7:latest
docker run -it --name cadvisor --volume=/:/rootfs:ro --volume=/var/run:/var/run:rw --volume=/sys:/sys:ro --volume=/var/lib/docker/:/var/lib/docker:ro --publish=8080:8080 -d peterjakobs/cadvisor-armv7:latest 

#  docker build -t peterjakobs/node_exporter-armv7:v0.16.0 .
#  docker push peterjakobs/node_exporter-armv7:v0.16.0
docker run --rm -d --name node_exporter --net=host peterjakobs/node_exporter-armv7:v0.16.0
