#!/bin/bash

echo "Infraestrutura como Código: Script de Provisionamento de um Servidor Web (Apache), orientado pelo Tech Lead na DIO Denilson Bonatti"

echo "Atualizando o servidor..."
apt update && apt upgrade -y

echo "Instalando pacotes..."
apt install apache2 -y
systemctl start apache2
apt install unzip -y

echo "Baixando aplicação web..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

echo "Copiando arquivos para o diretório do Apache..."
cp -R /tmp/linux-site-dio-main/* /var/www/html/

echo "Finalizado!"
