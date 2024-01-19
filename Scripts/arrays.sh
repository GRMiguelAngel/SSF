#!/bin/bash

regalos=("calcetines" "corbatas" "accesorios" "pulsera" "prismáticos" "camista de fútbol")
numeros=(2 432 6435 234 63455 3244 435 -6435 3244)

echo "Este año me he portado muy bien y me han regalado: ${regalos[1]}"

echo "Este año me he portado muy bien y me han regalado: ${regalos[*]}"
echo "Este año me he portado muy bien y me han regalado: ${regalos[@]}"

regalos+=("unas pantuflas")

echo "Mis regalos han sido: "
for reg in "${regalos[*]}"
do
        echo "- $reg"
done

regalos=("cámara" ${regalos[@]})

regalos=("pantalones" ${regalos[@]} "abrigo")


