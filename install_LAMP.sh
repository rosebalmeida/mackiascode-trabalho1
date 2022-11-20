#!/bin/bash
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install apache2
sudo apt-get install mysql-server
sudo apt-get install mariadb-server mariadb-client
sudo apt-get install php
sudo apt-get install php-{common,mysql,xml,xmlrpc,curl,gd,imagick,cli,dev,imap,mbstring,opcache,soap,zip,intl}
sudo systemctl restart apache2