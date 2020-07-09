#!/bin/bash

#install base
apt-get install -y openssl mariadb-server php7.3 php-fpm php-mysql php-cli php-mbstring

cd /root/

#Change config file in nginx folder
cp -pr ./nginx.conf /etc/nginx/sites-available/default

#Create folder localhost
rm -Rf /var/www/html
mkdir /var/www/localhost

#Give permissions and change ownership
chown -R www-data:www-data /var/www/*
chmod -R 755 /var/www/*

openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
	-subj "/C=BR/ST=SP/L=Sao Paulo/O=42 Sao Paulo/CN=localhost" \
	-keyout /etc/ssl/certs/localhost.key \
	-out /etc/ssl/certs/localhost.crt 


# inicializa o mysql
/etc/init.d/mysql start

#criando base de dados
#  -e, --execute=name  Execute command and quit. (Disables --force and history file.)
mysql -e "CREATE DATABASE wordpress_db;"
mysql -e "UPDATE mysql.user SET plugin = 'mysql_native_password' WHERE USER = 'root';"
mysql -e "GRANT ALL PRIVILEGES ON wordpress_db.* TO 'root'@'localhost' WITH GRANT OPTION;"
mysql -e "FLUSH PRIVILEGES;"

#instalando phpmyadmin
wget https://files.phpmyadmin.net/phpMyAdmin/5.0.2/phpMyAdmin-5.0.2-english.tar.gz
tar -xf phpMyAdmin-5.0.2-english.tar.gz 
rm -f phpMyAdmin-5.0.2-english.tar.gz
mv phpMyAdmin-5.0.2-english /var/www/localhost/phpMyAdmin
mv ./config.inc.php /var/www/localhost/phpMyAdmin

#instalando wordpress
wget https://wordpress.org/latest.tar.gz
tar -xf latest.tar.gz
rm -f latest.tar.gz
mv wordpress /var/www/localhost/wordPress
cp ./wp-config.php /var/www/localhost/wordPress

mv ./info.php /var/www/localhost
