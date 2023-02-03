#!/bin/bash
echo "Has elegido piedra"
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

    if [ "$variableMachine" = "piedra" ]; then
    sleep 1
    source array.sh 
    echo "${array[0]}"
    sleep 1
    echo "${array[1]}"
    sleep 1
    echo "${array[0]}"
    sleep 1
    echo "${array[2]}"
    sleep 1
        echo "¡Tablas! Habéis quedado empate. Las dos piedras chocan pero ninguna gana"
    elif [ "$variableMachine" = "papel" ]; then
    sleep 1
    source array.sh 
    echo "${array[0]}"
    sleep 1
    echo "${array[1]}"
    sleep 1
    echo "${array[3]}"
    sleep 1
    echo "${array[2]}"
    sleep 1
        echo "Gana la máquina porque papel gana a piedra. JAJAJAJAJ PUTO PERDEDOR ESPABILA"
    elif [ "$variableMachine" = "tijeras" ]; then
    sleep 1
    source array.sh 
    echo "${array[0]}"
    sleep 1
    echo "${array[1]}"
    sleep 1
    echo "${array[4]}"
    sleep 1
    echo "${array[2]}"
    sleep 1
        echo "Enohorabuena ganas tú porque la piedra destroza a las tijeras. Sigue así para impedir que gane la MATRIX"
    elif [ "$variableMachine" = "lagarto" ]; then
    sleep 1
    source array.sh 
    echo "${array[0]}"
    sleep 1
    echo "${array[1]}"
    sleep 1
    echo "${array[5]}"
    sleep 1
    echo "${array[2]}"
    sleep 1
        echo "Enohorabuena ganas tú con la piedra le abriste la cabeza al lagarto hasta hacer mermelada con sus sesos."
    elif [ "$variableMachine" = "spock" ]; then
    sleep 1
    source array.sh 
    echo "${array[0]}"
    sleep 1
    echo "${array[1]}"
    sleep 1
    echo "${array[6]}"
    sleep 1
    echo "${array[2]}"
    sleep 1
        echo "Intentase tirarle la piedra a Spock, pero él la paró con sus poderes psíquicos y gana la máquina. La MATRIX está avanzando en su conquista."
    else
        echo
    fi

read -p "¿Quieres jugar otra partida? (Y/N): " respuesta
case $respuesta in
    [Yy]*) bash juego.sh ;;
    [Nn]*) bash menu.sh ;;
    *) echo "Error. Introduce Y o N." ;;
esac