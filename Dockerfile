#Usa a imagem debian buster do Dockerhub como base
FROM debian:buster

#Copia o diretorio src para o root 
COPY srcs /root/

#Retira a interação durante a instalacao
ARG DEBIAN_FRONTEND=noninteractive

#Instala ferramenta auxiliares
RUN apt-get update && \
 apt-get install -y \
 nginx \
 wget \
 vim && \
 bash /root/config.sh 

#
ENTRYPOINT bash /root/starts.sh 

#Expoem as portas 80 e 443
EXPOSE 80/tcp 443/tcp
