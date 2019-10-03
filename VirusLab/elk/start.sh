#!/bin/bash

sudo systemctl restart docker

cd /home/vagrant
find /home/vagrant -type f -name '*.gz' -exec tar --extract --verbose --gzip --file {} \;

./prometheus-2.13.0-rc.0.linux-amd64/prometheus --config.file=/home/vagrant/prometheus.yml &
sleep 1
./node_exporter-0.18.1.linux-amd64/node_exporter &
sleep 1

curl -I http://localhost:9090/metrics
curl -I http://localhost:9100/metrics
curl -I http://localhost:3000/metrics
