#!/bin/bash
if (( EUID != 0 ))
then
  echo "Aquest script s'ha d'executar amb prilegis de l'usuari root"
  exit 4 
fi
clear
echo "p03.sh"
echo
echo -n "Dona el nom del usuari que vol esborrar: "
read usuari

read -p "Estas totalment segur d'esborrarlo? " -n 1 -r
echo 
if [[ $REPLY =~ ^[Yy]$ ]]
then
userdel $usuari
fi

exit 1
