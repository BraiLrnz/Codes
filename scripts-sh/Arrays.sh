#! /bin/bash


car=('BMW' 'Toyota' 'Honda' 'Mazda')


unset car[3]

car[3]='Loncin'

echo "${car[@]}"

echo "${car[1]}"

echo "${!car[@]}"

echo "${#car[@]}"
