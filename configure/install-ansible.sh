#!/bin/bash
set -euo pipefail

echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu focal main" >> /etc/apt/sources.list
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367
apt-get update
apt -y install ansible

apt -y install default-jre
cp /home/debian/java-app.service /etc/systemd/system/java-app.service
systemctl daemon-reload
systemctl enable java-app.service
systemctl start java-app