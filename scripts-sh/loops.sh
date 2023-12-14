#! /bin/bash

#While Loop
: '
number=1
while [ $number -le 10 ]
do
	echo "$number"
	number=$(( number+1 ))	
done 

# -lt Un caracter por debajo del establecido
# -le Llega hasta el caracter establecido.
# -ge Mayor o igual al caracter establecido.

# Unitl Loop

number=1
until [ $number -ge 10 ]
do
	echo $number
	number=$(( number+1 ))	
done '


# For loop

for (( i=0; i<20; i++ ))
do
	if [ $i -eq 5 ] || [ $i -eq 8 ]
	then
		continue
	fi
	echo $i
done

#break rompe el loop una vez la setencia es verdadera.
#continue ejecuta la setencia hasta que esta sea verdadera y luego continua el codigo. Segun el Ejemplo  no me mostrara el cinco por pantalla si no que continuara con el 6 ni el 8.
# {0..30} imprime valores desde el primer digito hasta el ultimo
# {0..20..3} Primer valor empieza, segundo valor termina y el ultimo valor es el que indica la cantidad de espacios que se mueve.
# Other sytanx -> (( i=0; i<20; i++ ))






