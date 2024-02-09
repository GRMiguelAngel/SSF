#!/bin/bash
i=0
echo "Hola soy el proceso $$"
trap "echo 'No no no, no me puedes interrumpir.'" SIGINT
trap "echo 'No no no, TAMPOCO me puedes interrumpir.'" TERM
trap "echo 'No no no, TAMPOCO me puedes interrumpir.'" SIGKILL
while true
do
    ((i++))
done