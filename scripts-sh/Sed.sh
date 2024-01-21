#! /bin/bash

echo "Escriba el nombre el archivo"
read FileName

if [[ -f $FileName ]]
then
		sed -i 's/cat/dog/g' $FileName
else
		echo "$FileName no existe"
fi

# Parametro -i para hacer el cambio al mismo archivo, sino agregamos el parametro -i solo imprime el resultado pero el archivo original no se modifica.
