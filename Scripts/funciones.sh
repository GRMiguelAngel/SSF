# Declarar funciones

# Modo 1
function media2v {
    a=$1
    b=$2
    ERROR_NO_ARG=3

    if [ -z "$a" ] || [ -z "$b" ]; then
        return $ERROR_NO_ARG

    media=$(( (a+b)/2 ))
    echo "$media"
}

# Modo 2
mediaNv() {
    echo "Hola"

}

#Modo 3
function mediaNv() {
    echo "Hola"

}

respuesta=$(media2v 3 9)
echo "El resultado es $respuesta"

media2v
echo "El error devuelto es $?"
#$? te indica el código de error