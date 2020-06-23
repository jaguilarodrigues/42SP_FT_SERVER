#!/bin/bash

#instala a base para 
apt-get install -y openssl mariadb-server php7.3 php-fpm php-mysql php-cli php-mbstring

#troca o arquivo .conf na pasta nginx
rm -f /etc/nginx/sites-enabled/default
cp /root/nginx.conf /etc/nginx/sites-enabled

#apaga a pasta html e cria pasta localhost
rm -Rf /var/www/html
mkdir /var/www/localhost
cp /root/index.php /var/www/localhost


