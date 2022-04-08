#!/bin/bash
if (( EUID != 0 ))
then
  echo "Aquest script s'ha d'executar amb prilegis de l'usuari root"
  exit 4 
fi
clear

echo -n "Escriu el nom base de l'usuari: "
read -s nomBase
echo

cont=$(pwgen 8 1)

echo -n "Indica la quantitat d'usuaris: "
read qt


echo "$nomBase$qt$@fje, $(pgwen 8 1)" >> nombase.txt
