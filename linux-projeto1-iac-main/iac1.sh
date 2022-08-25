#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /sales
mkdir /exp

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_EXP

echo "Criando usuários..."

useradd leonardo -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd vanessa -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd ciri -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM


useradd yennefer -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd geralt -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd chiji -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd dovakin -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_EXP
useradd lidia -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_EXP
useradd skyrim -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_EXP

echo "Especificando permissões dos diretórios...."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /exp

chmod 770 /adm
chmod 770 /ven
chmod 770 /exp
chmod 777 /publico

echo "Fim....."

