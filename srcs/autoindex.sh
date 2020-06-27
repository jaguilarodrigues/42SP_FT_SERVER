nginx_file='/etc/nginx/sites-available/default'

grep "autoindex on;" "$nginx_file" > /dev/null

if [ $? = 0 ];
then
	sed -i 's/autoindex on/autoindex off/' "$nginx_file";
	/etc/init.d/nginx restart
	echo "Autoindex is [OFF]"
else
	 sed -i 's/autoindex off/autoindex on/' "$nginx_file";
        /etc/init.d/nginx restart
	echo "Autoindex is [ON]"

fi

