#!/bin/bash
echo "Has elegido papel"
sleep 0.5
num=$((($RANDOM % 5) + 1))

    ##Switch case que da un valor a la variable elegida aleatoriamente por la máquina.
case "$num" in
"1")
    sleep 0.5
    echo "La máquina ha elegido Piedra"
    variableMachine="piedra"
    ;;
"2")
    sleep 0.5
    echo "La máquina ha elegido Papel"
    variableMachine="papel"
    ;;
"3")
    sleep 0.5
    echo "La máquina ha elegido Tijeras"
    variableMachine="tijeras"
    ;;
"4")
    sleep 0.5
    echo "La máquina ha elegido Lagarto"
    variableMachine="lagarto"
    ;;
"5")
    sleep 0.5
    echo "La máquina ha elegido Spock"
    variableMachine="spock"
    ;;
esac


if [ "$variableMachine" = "papel" ]; then
    sleep 1
    source array.sh
    echo "${array[3]}"
    sleep 1
    echo "${array[1]}"
    sleep 1
    echo "${array[3]}"
    sleep 1
    echo "${array[2]}"
    sleep 1
        echo "¡Tablas! Habéis quedado empate. Los papeles unen fuerzas para formar un folio pero ninguno gana."
    elif [ "$variableMachine" = "piedra" ]; then
    sleep 1
    source array.sh
    echo "${array[3]}"
    sleep 1
    echo "${array[1]}"
    sleep 1
    echo "${array[0]}"
    sleep 1
    echo "${array[2]}"
    sleep 1
        echo "En una ardúa batalla consigues enrrollar a la piedra con tu papel. Sales victorioso por esta vez..."
    elif [ "$variableMachine" = "tijeras" ]; then
    sleep 1
    source array.sh
    echo "${array[3]}"
    sleep 1
    echo "${array[1]}"
    sleep 1
    echo "${array[4]}"
    sleep 1
    echo "${array[2]}"
    sleep 1
        echo "En un intento de ataque, la tijera te ha partido brutalmente en dos. ¿En serio pensabas ganar a unas tijeras usando un papel? Pierdes la partida XD"
    elif [ "$variableMachine" = "lagarto" ]; then
    sleep 1
    source array.sh
    echo "${array[3]}"
    sleep 1
    echo "${array[1]}"
    sleep 1
    echo "${array[5]}"
    sleep 1
    echo "${array[2]}"
    sleep 1
        echo "Un lagarto enorme acaba de devorarte. Has contribuido a que continue la cadena alimenticia, pero pierdes la partida."
    elif [ "$variableMachine" = "spock" ]; then
    sleep 1
    source array.sh
    echo "${array[3]}"
    sleep 1
    echo "${array[1]}"
    sleep 1
    echo "${array[6]}"
    sleep 1
    echo "${array[2]}"
    sleep 1
        echo "Acabas de desautorizar a Spock y con ello contribuir a la destrucción de La MATRIX. Tú Ganas."
    else
        echo
    fi
fi

read -p "¿Quieres jugar otra partida? (Y/N): " respuesta
case $respuesta in
    [Yy]*) bash juego.sh ;;
    [Nn]*) bash menu.sh ;;
    *) echo "Error. Introduce Y o N." ;;
esac