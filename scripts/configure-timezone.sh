#!/usr/bin/env bash
set -e
sudo yum update -y
sudo yum install ntp -y
timezone=${TIME_ZONE:-Europe/London}
echo "###Setting timezone to $timezone ###"
sudo tee /etc/sysconfig/clock << EOF > /dev/null
ZONE=$timezone
UCT=true
EOF

sudo ln -sf /usr/share/zoneinfo/$timezone /etc/localtime
sudo chkconfig ntpd on

