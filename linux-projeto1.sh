#!/bin/bash

echo "Código que utilizei para o projeto"

echo "1- Criando os  diretorios"

mkdir publico
mkdir adm
mkdir ven
mkdir sec

echo "2- Criando os grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "3- Criando os Usuarios"

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
passwd carlos -e
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
passwd maria -e
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
passwd joao -e

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
passwd debora -e
useradd sebastian -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
passwd sebastian -e
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
passwd roberto -e

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
passwd josefina -e
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
passwd amanda -e
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
passwd rogerio -e

useradd convidado1 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd convidado1 -e

useradd convidado2 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd convidado2 -e

useradd convidado3 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd convidado3 -e

echo "4- Criando permissões"

chown root:GRP_ADM adm
chown root:GRP_VEN ven
chown root:GRP_SEC sec

chmod 770 adm
chmod 770 ven
chmod 770 sec
chmod 777 publico
