docker build --no-cache -t ftserver_image .
docker run --name ftserve_container -it -p 80:80 -p 443:443 ftserver_image
