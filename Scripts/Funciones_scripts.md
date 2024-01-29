# Funciones de scripts en Bash

-z : comprueba si está vacío.

-n : comprueba si no está vacío.

-e : comprueba si existe.

-f : comprueba si es un fichero.

-d : comprueba si es un directorio.

-h/-l : comprueba si es un enlace.

-s : comprueba que tenga tamaño (fichero o directorio).

-r : comprueba los permisos de lectura.

-w : comprueba los permisos de escritura.

-x :  comprueba los permisos de acceso/ejecución.

[ ! ... ] : pregunej01-resta.shta lo contrario.

&& : equivalente a "and".

|| : equivalente a "or".

< : Utiliza los datos de otro fichero.

<< : Pide los iputs del script con una clave.

<<< : Solo introduces un input.

echo "Fue ejecutado por el usuario $USER."
echo "Ha indicado $# argumentos."
echo "los argumentos indicados son: $@."
echo "los argumentos indicados son: $*."