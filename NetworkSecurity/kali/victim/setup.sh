#!/bin/bash

# setup for dvwa
unzip /kali/victim/DVWA-master.zip
cp -r /kali/victim/DVWA-master /var/www/html/dvwa
chmod -R 755 /var/www/html/dvwa
chown -R www-data:www-data /var/www/html/dvwa

# dvwa config

cp /var/www/html/dvwa/config/config.inc.php.dist /var/www/html/dvwa/config/config.inc.php

apt-get update && apt-get install default-mysql-server php-mysqli -y

sudo service mariadb start
mysql -u root -p{} -e "create database dvwa; create user 'dvwa'@'127.0.0.1' identified by 'p@ssw0rd'; grant all on dvwa.* to 'dvwa'@'127.0.0.1'; flush privileges;"

sudo service apache2 start

echo "extension_dir=/usr/lib/php/20210902" >> /etc/php/8.1/apache2/php.ini
