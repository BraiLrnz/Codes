#! /bin/bash

: '
args=("$@")

#echo ${args[1]} ${args[2]} ${args[3]}

echo $@
echo $# '

# Captura los valores escritos seguidos del script.

while read line
do
	echo "$line"
done < "${1:-/dev/stdin}"

