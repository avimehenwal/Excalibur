FROM prom/prometheus

ENV PROMETHEUS_VERSION $(prometheus version)
ADD prometheus.yml /etc/prometheus/


# Building from scratch
# FROM alpine:3.10
# https://github.com/prometheus/prometheus/releases/download/v2.13.0/prometheus-2.13.0.linux-amd64.tar.gz
# https://github.com/prometheus/node_exporter/releases/download/v0.18.1/node_exporter-0.18.1.linux-amd64.tar.gz