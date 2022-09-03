#!/bin/bash

numero=0
while [ $numero -ne 999 ]
do
	echo "Ingrese un numero o el 999 para salir"
	read numero
	echo $numero >> numeros.txt
done

echo "Como quiere ver los numeros ingresados? "
echo "A: Ascendente"
echo "D: Descendente"
echo "O: Como fueron ingresados"

echo "Ingrese la opcion"
read opcion

case $opcion in
	a|A) cat numeros.txt | sort -n;;
	d|D) cat numeros.txt | sort -n -r;;
	o|O) cat numeros.txt;;
	*) echo "Opcion incorrecta"
esac
rm numeros.txt
