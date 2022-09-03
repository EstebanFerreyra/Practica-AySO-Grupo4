#!/bin/bash

echo "Ingrese un nombre de archivo"
read archivo

echo "El archivo es $archivo"

if [[ -e $archivo ]];
then
	if [[ -d $archivo ]];
	then
		echo "Existe y es un directorio"
	elif [[ -f $archivo ]];
	then
		echo "Existe y es un archivo"
	fi


	if [[ -r $archivo ]];
	then
		echo "Tiene permiso de lectura"
	else
		echo "No tiene permiso de lectura"
	fi

	if [[ -x $archivo ]];
	then
		echo "Tiene permiso para ejecutrar el script"
	else
		echo "No tiene permiso para ejecutiar"
	fi

	if [[ -w $archivo ]];
	then
		echo "Tiene permiso de escritura"
	else 
		echo "No tiene permiso de escriura"
	fi	

else
	echo "El archivo o directorio no existe!"
fi
