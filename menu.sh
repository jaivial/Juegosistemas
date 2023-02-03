#!/bin/bash

echo "BIENVENIDO/A AL JUEGO DE PIEDRA PAPEL TIJERA LAGARTO SPOCK"
echo "=========================================================="
echo "1.- INICIAR JUEGO"
echo "2.- VER REGLAS"
echo "3.- SALIR DEL JUEGO"
read -p "Selecciona una opción: " eleccion


##Switch case que da un valor a la variable elegida por el usuario.
case "$eleccion" in 
"1")
    echo "Iniciando Partida"
    source ./juego.sh
    ;;
"2")
    echo "Abriendo Reglas"
    source ./reglas.sh
    ;;
"3")
    echo "Saliendo del Juego."
    ;;
*)
    echo "La opción introducida no es correcta, teclea un número del 1 al 3."
    ;;
esac