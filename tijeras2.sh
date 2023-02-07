#!/bin/bash
echo "Has elegido tijeras"
sleep 0.5
num=$((($RANDOM % 5) + 1))

    ##Switch case que da un valor a la variable elegida aleatoriamente por la máquina.
case "$num" in
"1")
    sleep 0.5
    echo "La máquina ha elegido piedra"
    variableMachine="piedra"
    ;;
"2")
    sleep 0.5
    echo "La máquina ha elegido papel"
    variableMachine="papel"
    ;;
"3")
    sleep 0.5
    echo "La máquina ha elegido tijeras"
    variableMachine="tijeras"
    ;;
"4")
    sleep 0.5
    echo "La máquina ha elegido lagarto"
    variableMachine="lagarto"
    ;;
"5")
    sleep 0.5
    echo "La máquina ha elegido Spock"
    variableMachine="spock"
    ;;
esac

if [ "$variableMachine" = "tijeras" ]; then
    sleep 1
    source array.sh
    echo "${array[4]}"
    sleep 1
    echo "${array[1]}"
    sleep 1
    echo "${array[4]}"
    sleep 1
    echo "${array[2]}"
    sleep 1
        echo "¡Tablas! Haceis la tijera, ambas disfrutáis asi que no gana nadie."
    elif [ "$variableMachine" = "piedra" ]; then
    sleep 1
    source array.sh
    echo "${array[4]}"
    sleep 1
    echo "${array[1]}"
    sleep 1
    echo "${array[0]}"
    sleep 1
    echo "${array[2]}"
    sleep 1
        echo "Te impacta una piedra desde el cielo. La piedra te destroza física y emocionalmente, caes en depresión y pierdes la partida."
    elif [ "$variableMachine" = "papel" ]; then
    sleep 1
    source array.sh
    echo "${array[4]}"
    sleep 1
    echo "${array[1]}"
    sleep 1
    echo "${array[3]}"
    sleep 1
    echo "${array[2]}"
    sleep 1
        echo "Un papel con aires de superioridad se acerca a ti. Ni te inmutas y lo partes por la mitad. Tú ganas."
    elif [ "$variableMachine" = "lagarto" ]; then
    sleep 1
    source array.sh
    echo "${array[4]}"
    sleep 1
    echo "${array[1]}"
    sleep 1
    echo "${array[5]}"
    sleep 1
    echo "${array[2]}"
    sleep 1
        echo "Te encuentras con un lagarto diminuto y le cortas la cabeza a sangre fría. Eres un monstruo sin sentimientos... pero has ganado la partida."
    elif [ "$variableMachine" = "spock" ]; then
    sleep 1
    source array.sh
    echo "${array[4]}"
    sleep 1
    echo "${array[1]}"
    sleep 1
    echo "${array[6]}"
    sleep 1
    echo "${array[2]}"
    sleep 1
        echo "Spock te rompe. Ni siquiera ha necesitado usar sus poderes psíquicos... Eres débil, pierdes la partida."
    else
        echo
    fi


read -p "¿Quieres jugar otra partida? (Y/N): " respuesta
case $respuesta in
    [Yy]*) bash juego.sh ;;
    [Nn]*) bash menu.sh ;;
    *) echo "Error. Introduce Y o N." ;;
esac