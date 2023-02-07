#!/bin/bash

echo "Has elegido spock."
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
    echo "${array[6]}"
    sleep 1
    echo "${array[1]}"
    sleep 1
    echo "${array[4]}"
    sleep 1
    echo "${array[2]}"
    sleep 1
        echo "Unas tijeras intentan cortarte los dedos pero son de punta redondeada y no tienen filo. Las partes por la mitad, de locos. Has ganado."
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
        echo "Un cacho de mineral te ataca pero con tus poderes la vaporizas de alguna manera incomprensible. De verdad, que chaval más raro. Has ganado."
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
        echo "Parece un papelucho sin autoridad pero resulta que es una carta del Alto Mando. Has sido desautorizado y te suicidas porque tu vida ya no tiene sentido. Has perdido."
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
        echo "AAAAAAAAAAAA un lagarto. Te mueres envenenado, has perdido."
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
        echo "\"Joder mira que eres feo\" te dice tu gemelo. Os liáis como julandrones y acaba en empate."
    else
        echo
    fi

    read -p "¿Quieres jugar otra partida? (Y/N): " respuesta
case $respuesta in
    [Yy]*) bash juego.sh ;;
    [Nn]*) bash menu.sh ;;
    *) echo "Error. Introduce Y o N." ;;
esac