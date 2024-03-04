clear
echo "     ************"
echo "     *** MENÚ ***"
echo "     ************"
echo ""
echo "porlibre: Espacio libre de la partición raíz (en porcentaje)."
echo "tamlibre: Espacio libre de la partición raíz (en tamaño)."
echo "usuario: Usuario actual."
echo "maquina: Nombre de la máquina."
echo "usuarios: Número de usuarios del sistema."
echo "espacio: Espacio usado en todos los directorios."
echo "directorios: Número de directorios en el directorio raíz." 
echo "salir: Salir del sistema."  
read -p "Introduzca su opción: " opcion

case "$opcion" in

    porlibre|1) porcentaje_libre=$(df -h)
    echo "El porcentaje de disco libre es $porcentaje_libre"
    ;;

    tamlibre|2)tamaño_libre=$(df -h)
    echo "El espacio del disco libre es $tamaño_libre"
    ;;

    usuario|3) usuario=$(whoami)
    echo "Usuario: $usuario"
    ;;
    
    maquina|4) 
    maquina=$(hostname) 
    echo "El nombre de la máquina es $maquina"
    ;;

    usuarios|5)
    usuarios=$(who | cut -d " " -f 1 | sort -u | wc -l)
    echo "El total de usuarios de esta máquina es $usuarios"
    ;;

    espacio|6)
    espacio_usado=$(sudo du -sh /home/* | cut -f1) 
    echo "El espacio usado de directorios personales es $espacio_usado"
    ;;

    directorios|7)
    directorios=$(ls -R / 2> /dev/null | wc -l)
    echo "Hay $directorios directorios en el directorio raíz."
    ;;

    salir|8)
    ;;

    *) echo "ERROR: '$opcion' no es una opción válida."
    ;;
esac