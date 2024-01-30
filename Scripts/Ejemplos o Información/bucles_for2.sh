#!/bin/bash

for arg in "$*"
do
	echo "El argumento es $arg"
done

for arg in "$@"
do
	echo "El argumento es $arg"
done

for elem in *.sh
do
	echo "Elemento: $elem"
done

for elem in $(date)
do
	echo '$*: ' "El argumento es $elem"
done

