#!/bin/bash
sudo su -
apt-get update
apt-get install openjdk-11-jre-headless
curl -L https://packages.rundeck.com/pagerduty/rundeck/gpgkey | sudo apt-key add -
cat >'/etc/apt/sources.list.d/rundeck.list' <<EOT
deb https://packages.rundeck.com/pagerduty/rundeck/any/ any main
deb-src https://packages.rundeck.com/pagerduty/rundeck/any/ any main
EOT
apt-get update
apt-get install rundeck
systemctl enable rundeckd.service 
systemctl start rundeckd.service 