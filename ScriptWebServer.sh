#!/bin/bash

echo "Atualização e instalação de pacotes"
apt update -y ; apt upgrade -y
apt install nginx -y
apt install unzip -y

echo "Baixando e copiando os arquivos"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/



