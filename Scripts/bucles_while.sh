#!/bin/bash

i=0

while [ "$i" -lt 10000 ]
do
	echo "El valor de i es $i"
	i=$((i+1))
done

# while [[  ]]
# while ((i < 10))

until [ "$i" -gt 10 ]
do
	echo "El valor de i es $i"
	((i++))
done

