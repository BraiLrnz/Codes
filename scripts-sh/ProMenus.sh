#! /bin/bash

echo "Presiona cualquier tecla"

while [ true ]
do
		read -t 3 -n 1
if [ $? = 0 ]
then
		echo "Se ha agotado el tiempo"
		exit;
else
		echo "Favor, Presione una tecla"
fi

done






#select car in BMW MERCEDES TESLA ROVER TOYOTA
#do
#		case $car in 
#		BMW)
#				echo "BMW Seleccionado";;
#		MERCEDES)
#				echo "Mercedes Seleccionado";;
#		TESLA)
#				echo "Tesla seleccionado";;
#		ROVER)
#				echo "Rover Seleccionado";;
#		TOYOTA)
#				echo "Toyota Seleccionado";;
#		*)
#				echo "Error, Por favor seleccione una opccion valida";;
#		esac
#done
