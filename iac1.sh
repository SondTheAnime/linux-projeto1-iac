#!/bin/bash

echo "Iniciando script de criação de estrutura..."

# Removendo diretórios, arquivos, grupos e usuários anteriores
echo "Removendo configurações anteriores..."
rm -rf /publico /adm /ven /sec
groupdel GRP_ADM 2>/dev/null
groupdel GRP_VEN 2>/dev/null
groupdel GRP_SEC 2>/dev/null
userdel -r carlos 2>/dev/null
userdel -r maria 2>/dev/null
userdel -r joao 2>/dev/null
userdel -r debora 2>/dev/null
userdel -r sebastiana 2>/dev/null
userdel -r roberto 2>/dev/null
userdel -r josefina 2>/dev/null
userdel -r amanda 2>/dev/null
userdel -r rogerio 2>/dev/null

# Criando diretórios
echo "Criando diretórios..."
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

# Criando grupos
echo "Criando grupos..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

# Criando usuários e adicionando aos grupos
echo "Criando usuários..."
# Grupo ADM
useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

# Grupo VEN
useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

# Grupo SEC
useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

# Definindo permissões dos diretórios
echo "Configurando permissões..."
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

# Definindo permissões
chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Script finalizado!" 