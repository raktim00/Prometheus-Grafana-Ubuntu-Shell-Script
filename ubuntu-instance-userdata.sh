#!/bin/bash

apt-get -y install git
git clone https://github.com/raktim00/Prometheus-Grafana-Ubuntu-Shell-Script.git
chmod +x ./Prometheus-Grafana-Ubuntu-Shell-Script/*.sh
./Prometheus-Grafana-Ubuntu-Shell-Script/prometheus-ubuntu.sh
./Prometheus-Grafana-Ubuntu-Shell-Script/node-exporter-ubuntu.sh
./Prometheus-Grafana-Ubuntu-Shell-Script/grafana-ubuntu.sh
./Prometheus-Grafana-Ubuntu-Shell-Script/nginx-ubuntu.sh
