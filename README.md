# 42SP_FT_SERVER

Build image ft_server
```console
docker build --no-cache -t ftserver_image .
```

To see the list of imagens created
```console
docker images
```

-------------
### Deal with the error of port 80 that is already in use in the 42VM

Probably port 80 is occupied with the nginx of the VM

List services status to see if the nginx is active
```console
service --status-all
```

[ + ]  nginx  (active)

[ - ]  nginx  (disabled)

Disabled  nginx
```console
service nginx stop
```
-------------

To run container 
```console
docker run --name ftserve_container -it -p 80:80 -p 443:443 ftserver_image
```

-------------


### Configuração NGINX

Atualizando

```console
apt-get update && apt-get install -y procps
```
Instala o NGINX

```console
apt-get install nginx
```

Ver processos com nginx

```console
ps -ef | grep nginx
```

