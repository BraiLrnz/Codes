#! /bin/bash

: '
MESSAGE="Hola a todos"
export MESSAGE
./otherscript.sh'

echo "Primer texto"
read st1

echo "Segundo Texto"
read st2

if [ "$st1" \< "$st2" ]
then
	echo "$st1 tiene menos letras que $st2"

elif [ "$st1" \< "$st2" ]
then
	echo "$st2 tiene mas letras que $st1"
else
	echo "Son iguales"
fi

#Other Syntax -> if [ "$st1" == "$st2" ]
