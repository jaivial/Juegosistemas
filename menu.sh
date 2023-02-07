#!/bin/bash
clear
echo "BIENVENIDO/A AL JUEGO DE PIEDRA PAPEL TIJERA LAGARTO SPOCK"
echo "=========================================================="
echo "1.- INICIAR JUEGO PARA 1 JUGADOR"
echo "2.- INICIAR JUEGO PARA 2 JUGADORES"
echo "3.- VER REGLAS"
echo "4.- SALIR DEL JUEGO"
read -p "Selecciona una opción: " eleccion


##Switch case que da un valor a la variable elegida por el usuario.
case "$eleccion" in 
"1")
    echo "Iniciando Partida"
    sleep 1
    clear
    bash juego.sh
    ;;
"2")
    echo "Iniciando Partida para 2"
    sleep 1
    clear
    bash juego2.sh
    ;;
"3")
    echo "Abriendo Reglas"
    sleep 1
    clear
    bash reglas.sh
    ;;
"4")
    echo "Saliendo del Juego."
    sleep 1
    clear
    ;;
*)
    echo "La opción introducida no es correcta, teclea un número del 1 al 4."
    sleep 1.5
    clear
    bash menu.sh
    ;;
esac