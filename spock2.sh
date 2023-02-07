#!/bin/bash
echo "| JUGADOR 2 |"
echo "| PIEDRA | PAPEL | TIJERAS | LAGARTO | SPOCK |"
echo "=============================================="
echo "1.- Sacar Piedra"
echo "2.- Sacar Papel"
echo "3.- Sacar Tijeras"
echo "4.- Sacar Lagarto"
echo "5.- Sacar Spock"
read -p "Selecciona una opción: " num

echo "El jugador 1 ha elegido spock"

##Switch case que da un valor a la variable elegida aleatoriamente por la máquina.
case "$num" in
"1")
    sleep 0.5
    echo "El jugador 2 ha elegido piedra"
    variableMachine="piedra"
    ;;
"2")
    sleep 0.5
    echo "El jugador 2 ha elegido papel"
    variableMachine="papel"
    ;;
"3")
    sleep 0.5
    echo "El jugador 2 ha elegido tijeras"
    variableMachine="tijeras"
    ;;
"4")
    sleep 0.5
    echo "El jugador 2 ha elegido lagarto"
    variableMachine="lagarto"
    ;;
"5")
    sleep 0.5
    echo "El jugador 2 ha elegido Spock"
    variableMachine="spock"
    ;;
*)
    echo "La opción introducida no es correcta, teclea un número del 1 al 5."
    sleep 2
    clear
    bash juego2.sh
    ;;
esac

    if [ "$variableMachine" = "tijeras" ]; then
    sleep 1
    source array.sh 
    echo "${array[6]}"
    sleep 1
    echo "${array[1]}"
    sleep 1
    echo "${array[4]}"
    sleep 1
    echo "${array[2]}"
    sleep 1
        echo "El jugador 2 coge unas tijeras y intenta cortarle la cabeza al jugador 1, pero son del chino y no sirven ni para cortar un folio, asique el jugador 1 se limpia el culo con ellas y las partes por la mitad. Jugador 1 ha ganado."
    elif [ "$variableMachine" = "piedra" ]; then
    sleep 1
    source array.sh 
    echo "${array[6]}"
    sleep 1
    echo "${array[1]}"
    sleep 1
    echo "${array[0]}"
    sleep 1
    echo "${array[2]}"
    sleep 1
        echo "El jugador 2 intenta atacar al jugador 1 con una simple piedra, el jugador 1 se rie en su cara y con sus poderes evaporiza magicamente a la piedra. El jugador 1 ha ganado."
    elif [ "$variableMachine" = "papel" ]; then
    sleep 1
    source array.sh 
    echo "${array[6]}"
    sleep 1
    echo "${array[1]}"
    sleep 1
    echo "${array[3]}"
    sleep 1
    echo "${array[2]}"
    sleep 1
        echo "El jugador 2 parece un papelucho sin autoridad pero resulta que es una carta del Alto Mando. El jugador 1 ha sido desautorizado y se suicida porque su vida ya no tiene sentido. El jugador 2 ha ganado."
    elif [ "$variableMachine" = "lagarto" ]; then
    sleep 1
    source array.sh 
    echo "${array[6]}"
    sleep 1
    echo "${array[1]}"
    sleep 1
    echo "${array[5]}"
    sleep 1
    echo "${array[2]}"
    sleep 1
        echo "El jugador 1 se cree invencible con sus poderes, pero el jugador 2 transformado en lagarto le muerde en las nalgas y lo envenena. El jugador 2 ha ganado."
    elif [ "$variableMachine" = "spock" ]; then
    sleep 1
    source array.sh 
    echo "${array[6]}"
    sleep 1
    echo "${array[1]}"
    sleep 1
    echo "${array[4]}"
    sleep 1
    echo "${array[2]}"
    sleep 1
        echo "Pareceis la misma persona, de hecho sois hermanos gemelos, la familia es sagrada asique decidis no mataros, os dais un abrazo y nadie gana. Habeis quedado empate"
    else
        echo
    fi

    read -p "¿Quieres jugar otra partida? (Y/N): " respuesta
case $respuesta in
    [Yy]*) bash juego.sh ;;
    [Nn]*) bash menu.sh ;;
    *) echo "Error. Introduce Y o N." ;;
esac