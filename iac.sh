#!/bin/bash

echo "Creating Folders"

mkdir publico
mkdir adm
mkdir sec
mkdir ven

echo "Creating Groups"

groupadd ADMIN
groupadd SEC
groupadd VENDAS

echo "Creating Users"

useradd temp1 -m -s /bin/bash -p $(openssl passwd -crypto abc123) -G ADMIN
useradd temp2 -m -s /bin/bash -p $(openssl passwd -crypto abc123) -G ADMIN
useradd temp3 -m -s /bin/bash -p $(openssl passwd -crypto abc123) -G ADMIN

useradd temp4 -m -s /bin/bash -p $(openssl passwd -crypto abc123) -G VENDAS
useradd temp5 -m -s /bin/bash -p $(openssl passwd -crypto abc123) -G VENDAS
useradd temp6 -m -s /bin/bash -p $(openssl passwd -crypto abc123) -G VENDAS

useradd temp7 -m -s /bin/bash -p $(openssl passwd -crypto abc123) -G SEC
useradd temp8 -m -s /bin/bash -p $(openssl passwd -crypto abc123) -G SEC
useradd temp9 -m -s /bin/bash -p $(openssl passwd -crypto abc123) -G SEC

echo "Creating Parameters"

chown root:ADMIN /adm
chown root:VENDAS /vendas
chown root:SEC /sec

chmod 770 /adm
chmod 770 /sec
chmod 770 /ven
chmod 777/publico

echo "Done"
