#! /bin/bash

echo "Escriba el nombre el archivo"
read FileName

if [[ -f $FileName ]]
then
		sed -i 's/cat/dog/g' $FileName
else
		echo "$FileName no existe"
fi

# Con bash -x ./script.sh podemos debuggear un codigo y conocer los errores del script.
