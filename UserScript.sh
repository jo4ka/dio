#!/bin/bash

echo "Diretorios"
mkdir /publico
mkdir /financeiro
mkdir /ti

echo "Grupo de Usuarios"

groupadd GRP_FIN
groupadd GRP_TI

echo "Usuarios"
useradd carlos -m -s /bin/bash -p $ (openssl passwd -crypt Senha123) -G GRP_FIN
useradd maria -m -s /bin/bash -p $ (openssl passwd -crypt Senha123) -G GRP_FIN 
useradd joao -m -s /bin/bash -p $ (openssl passwd -crypt Senha123) -G GRP_TI

echo "Permissões"

chown root:GRP_FIN /financeiro
chown root:GRP_TI /ti

chmod 770 /financeiro
chmod 770 /ti
chmod 777 /publico