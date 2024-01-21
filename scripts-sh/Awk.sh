#! /bin/bash

echo "Escriba el nombre el archivo"
read FileName

if [[ -f $FileName ]]
then
		awk '/linux/ {print $3,$4}' $FileName
else
		echo "$FileName no existe"
fi




# awk '/windows/ {print}' $FileName  -> Imprime la linea que contiene la palabra dentro de los slashs.
# awk '/windows/ {print $2}' $FileName  -> el $2 imprime la segunda palabra de la frase. Tambien podria agregar otra palabra que quisiera imprimir ejemplo podria hacer: $2, $4
