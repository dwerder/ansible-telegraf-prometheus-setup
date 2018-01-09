This is just a little script to setup a test environment for Telegraf (Influxdb) with Prometheus and its Alertmanager. Furthermore Grafane will be installed.

Its designed to run on an Ubuntu(16.04 Xenial) VM.

### Run

```bash
cd /opt
git clone https://github.com/dwerder/ansible-telegraf-prometheus-setup.git
cd ansible-telegraf-prometheus-setup
sudo bash setup.sh
```

At the end you should be able to access

### Grafana:
- ip:3000
- admin:1234

### Prometheus:
- ip:9090

### Alertmanager:
- ip:9093
