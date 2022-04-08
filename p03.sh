#!/bin/bash
if (( EUID != 0 ))
then
  echo "Aquest script s'ha d'executar amb prilegis de l'usuari root"
  exit 4 
fi
opc=c
while [[  $opc  !=  n  ]]
do
clear

echo "p03.sh"
echo
echo -n "Dona el nom del servei que es vol deshabilitar: "
read servei
systemctl disable $servei
echo "L'estat del servei $servei es:"
systemctl is-enabled $servei
 echo
    echo -n "Vols continuar (c/n): "
    read opc
done
exit 10
