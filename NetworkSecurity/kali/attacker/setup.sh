!/bin/bash

cp -r DVWA-master /var/www/html/dvwa
chmod -R 755 /var/www/html/dvwa
chown -R www-data:www-data /var/www/html/dvwa
