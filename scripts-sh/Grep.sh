#! /bin/bash

echo "Escriba el nombre el archivo"
read FileName

if [[ -f $FileName ]]
then
		echo "Escriba el texto que desea buscar"
		read grepvar
		grep -i -n $grepvar $FileName
else
		echo "$FileName no existe"
fi
