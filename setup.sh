#!/bin/bash

# http://docs.ansible.com/ansible/latest/intro_installation.html
apt-get update
apt-get install software-properties-common
apt-add-repository ppa:ansible/ansible
apt-get update
apt-get install ansible

# configure ansible host
cat <<- 'EOF' > /etc/ansible/hosts
    [local]
    127.0.0.1
EOF

# install ansible galaxy modules
ansible-galaxy install cloudalchemy.alertmanager
ansible-galaxy install cloudalchemy.prometheus
ansible-galaxy install cloudalchemy.grafana

# execute ansible
ansible-playbook site.yml
