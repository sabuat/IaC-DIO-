#!/bin/bash

echo "Removing Folders"

rmdir /publico
rmdir /adm
rmdir /ven
rmdir /sec

echo "Removing Groups"

groupdel ADMIN
groupdel VENDAS
groupdel SEC

echo "Removing Users"

userdel -r carlos
userdel -r maria
userdel -r joao
userdel -r deborah
userdel -r sebastiana
userdel -r roberto
userdel -r josefina
userdel -r amanda
userdel -r rogerio

echo "Done"








