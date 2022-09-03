#!/bin/bash

read nota

if [[ $nota -lt 6 ]];
then
	if [[ $nota -gt 4 ]];
	then
		echo "El alumno esta regular"
	else
		echo "El alumno esta desaprobado"
	fi
else
	echo "El alumno aprobo la materia"
fi
