#!/bin/bash

INDEX=${1:-$AUTOINDEX}
nginx_file="/etc/nginx/sites-available/default"

if [[ "$INDEX" == "off" || "$INDEX" == "on" ]];
then
	sed -i -E "/autoindex/ s/on|off/$INDEX/" $nginx_file;
	export AUTOINDEX=$INDEX
	/etc/init.d/nginx restart
	echo "Autoindex is [$INDEX]"
else
	echo $'Invalid Parameter!\n\tUsage autoindex [ on|off ]'
fi

