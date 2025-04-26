#!/bin/bash

echo "Excluindo diretórios..."
rm -rf /ambiente_teste

echo "Excluindo usuários..."
userdel -f -r carlos
userdel -f -r maria
userdel -f -r joao
userdel -f -r debora
userdel -f -r sebastiana
userdel -f -r roberto
userdel -f -r josefina
userdel -f -r amanda
userdel -f -r rogerio

echo "Excluindo grupos..."
groupdel GRP_ADM
groupdel GRP_VEN
groupdel GRP_SEC

echo "Pronto, agora você pode reiniciar o teste!"
