#!/bin/bash
sudo su -
apt-get update
apt-get install openjdk-11-jre-headless
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
cat >'/etc/apt/sources.list.d/jenkins.list' <<EOT
deb http://pkg.jenkins.io/debian-stable binary/
EOT
apt-get update
apt-get install jenkins 
systemctl enable jenkins
systemctl start jenkins