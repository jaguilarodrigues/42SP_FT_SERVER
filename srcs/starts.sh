#!/bin/bash

#inicializa o serviços

# php: sem isso não cria o sock para o nginx.conf 
/etc/init.d/php7.3-fpm start

# inicializa o mysql
/etc/init.d/mysql start

# inicializa denovo o nginx
/etc/init.d/nginx start

bash /root/autoindex.sh

cd /root/

bash
