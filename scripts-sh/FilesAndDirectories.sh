#! /bin/bash

#Para eliminar un archivo

echo "Escribe el nombre del archivo que quieres eliminar"
read FileName


if [[ -f "$FileName" ]]
then
		rm $FileName
		echo "El archivo ha sido eliminado con exito"
else
	echo "$FileName no existe"
fi

#Para leer el contenido de un archivo

#echo "Escribe el nombre del archivo que quieres leer"
#read FileName


#if [[ -f "$FileName" ]]
#then
#	while IFS= read -r line
#	do
#			echo "$line"
#	done < $FileName
#else
#	echo "$FileName no existe"
#fi


#Para Agregar texto a un archivo

#echo "Escribe el nombre del archivo al que quieres agregar texto"
#read FileName


#if [[ -f "$FileName" ]]
#then
#	echo "Escribe el texto que deseas ingresar al archivo"
#	read FileText
#	echo "$FileText" > $FileName
#else
#	echo "$FileName no existe"
#fi

# >> Puedo agregar informacion al arachivo sin perder la que ya tenia
# > Sobre escribe el archivo 

#Para verificar la existencia de archivos
#echo "Escribe el nombre del archivo a verificar"
#read FileName
#touch $FileName

#if [ -f "$FileName" ]
#then
#	echo "$FileName existe"
#else
#	echo "$FileName no existe"
#fi


#Para Verificar Directorios
#mkdir -p Folder2 
#echo "Escribe el nombre del directorio para verificar"
#read direct

#if [ -d "$direct" ]
#then
#	echo "$direct existe"
#else
#	echo "$direct no existe"
#fi
