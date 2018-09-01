# Builder
FROM resin/raspberry-pi-alpine-golang:1.9.7-20180828 as builder

MAINTAINER Peter jakobs <peterjakobs67@gmail.com>

RUN pwd && ls -l && uname -a
#RUN git clone https://github.com/google/cadvisor.git /go/src/github.com/google/cadvisor
RUN go get -d github.com/google/cadvisor

WORKDIR /go/src/github.com/google/cadvisor

RUN make build

# Image for usage
FROM resin/raspberry-pi-alpine-golang:1.9.7-20180828
#FROM resin/rpi-raspbian:stretch-20180815

MAINTAINER Peter jakobs <peterjakobs67@gmail.com>

COPY --from=builder /go/src/github.com/google/cadvisor/cadvisor /usr/bin/cadvisor

EXPOSE 8080
ENTRYPOINT ["/usr/bin/cadvisor", "-logtostderr"]
