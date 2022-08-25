#!/bin/bash


echo "Criando usuários do sistema...."

useradd user-guest10 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd user-guest10 -e

useradd user-guest11 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd user-guest11 -e

useradd user-guest12 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd user-guest12 -e

useradd user-guest13 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd user-guest13 -e

echo "Finalizado!!"

