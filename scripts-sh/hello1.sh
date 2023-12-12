#! /bin/bash

#-eq -> equal
#-ne -> non equal
# <> with doble parentesis

count=10
if (( $count > 11 ))
then
	echo "first condition is true"
elif (( $count > 12 ))
then
	echo "Second condition is true"
else
	echo "The condition is false"
fi
