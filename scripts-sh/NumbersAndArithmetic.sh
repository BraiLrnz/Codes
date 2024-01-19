#! /bin/bash


#n1=4
#n2=20

#echo $(( n1 + n2 ))
#echo $(( n1 - n2 ))
#echo $(( n1 * n2 ))
#echo $(( n1 / n2 ))
#echo $(( n1 % n2 ))

#Other Syntax
# echo $(expr $n1 + $n2)
# echo $(expr $n1 - $n2)
# echo $(expr $n1 \* $n2)
# echo $(expr $n1 / $n2)
# echo $(expr $n1 % $n2)


echo "Enter Hex nimber of your choice"
read Hex

echo -n "The Decimal value of $Hex is : "

echo "obase=10; ibase=16; $Hex" | bc
