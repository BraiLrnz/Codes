#! /bin/bash

: '
MESSAGE="Hola a todos"
export MESSAGE
./otherscript.sh'

echo "Primer texto"
read st1

echo "Segundo Texto"
read st2

if [ "$st1" == "$st2" ]
then
	echo "Los textos coinciden"
else
	echo "Los textos no coinciden"
fi
