#! /bin/bash

: '
MESSAGE="Hola a todos"
export MESSAGE
./otherscript.sh

echo "Primer texto"
read st1

echo "Segundo Texto"
read st2

if [ "$st1" \< "$st2" ]
then
	echo "$st1 is smaller than $st2"

elif [ "$st1" \> "$st2" ]
then
	echo "$st2 is smaller than $st1"
else
	echo "Son iguales"
fi'


echo "Primer texto"
read st1

echo "Segundo Texto"
read st2

echo ${st1^}
echo ${st2^^}

#Para imprimir datos de 2 variables en una sola linea.
#Other Syntax -> if [ "$st1" == "$st2" ]
#echo ${st1^} -> Este imprime la primera letra en mayuscula
#echo ${st2^^} -> Este imprime todo el texto en mayuscula.
