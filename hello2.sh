#! /bin/bash

age=10

if [ "$age" -gt 9 ] || [ "$age" -lt 40 ]
then
	echo "Age is correct"
else
	echo "Age is incorrect"
fi

#Other sytanx to do te same 
# if [[ "$age" -gt 9  &&  "$age" -lt 40 ]]
# if [ "$age" -gt 9 -a "$age" -lt 40 ]
# if [ "$age" -gt 9 ] && [ "$age" -lt 40 ]
# -a -> y also we can use &&
# -o -> or also we can use ||
