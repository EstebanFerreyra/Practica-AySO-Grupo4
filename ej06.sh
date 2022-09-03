#/bin/bash

res=0
echo "Responder correctamente las preguntas"
echo "SOLO TIENES TRES INTENTOS"
for numero in {1..3};
do
	echo "2 + 2 = ?"
	read res
	if [[ res -eq 4 ]];
	then
		echo "Respuesta correcta"
	else
		echo "Respuesta incorrecta"
		echo "Intento numero $numero"
	fi
done
