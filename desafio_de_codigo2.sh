#!/bin/bash

echo "Projeto Infraestrutura como Código: Script de Criação de Estrutura de Usuários, Diretórios e Permissões, orientado pelo Tech Lead na DIO Denilson Bonatti."

echo "Criando diretórios..."
mkdir /ambiente_teste
mkdir /ambiente_teste/publico
mkdir /ambiente_teste/adm
mkdir /ambiente_teste/ven
mkdir /ambiente_teste/sec

echo "Criando grupos..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."
useradd carlos -m -c "Carlos Garcia" -s /bin/bash
useradd maria -m -c "Maria dos Santos" -s /bin/bash
useradd joao -m -c "Joõa da Silva" -s /bin/bash
useradd debora -m -c "Débora Souza" -s /bin/bash
useradd sebastiana -m -c "Sebastiana Palmares" -s /bin/bash
useradd roberto -m -c "Roberto Garcez" -s /bin/bash
useradd josefina -m -c "Josefina Pires" -s /bin/bash
useradd amanda -m -c "Amanda Vasconcelos" -s /bin/bash
useradd rogerio -m -c "Rogério Luiz" -s /bin/bash

echo "Atribuindo usuários aos grupos..."
usermod -G GRP_ADM carlos
usermod -G GRP_ADM maria
usermod -G GRP_ADM joao

usermod -G GRP_VEN debora
usermod -G GRP_VEN sebastiana
usermod -G GRP_VEN roberto

usermod -G GRP_SEC josefina
usermod -G GRP_SEC amanda
usermod -G GRP_SEC rogerio

echo "Alterando owner dos grupos para root..."
chown root:GRP_ADM /ambiente_teste/adm
chown root:GRP_VEN /ambiente_teste/ven
chown root:GRP_SEC /ambiente_teste/sec

echo "Alterando permissões de usuários..."
chmod 777 /ambiente_teste/publico
chmod 770 /ambiente_teste/adm
chmod 770 /ambiente_teste/ven
chmod 770 /ambiente_teste/sec
