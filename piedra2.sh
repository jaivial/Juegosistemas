#!/bin/bash
echo ""
echo "| JUGADOR 2 |"
echo "-------------"
echo "1.- Sacar Piedra"
echo "2.- Sacar Papel"
echo "3.- Sacar Tijeras"
echo "4.- Sacar Lagarto"
echo "5.- Sacar Spock"
read -sp "Selecciona una opción: " num
echo " "
echo "El jugador 1 ha elegido piedra"

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
    echo "Las dos piedras chocan pero ninguna gana. Habéis quedado empate."
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
    echo "Gana el jugador 2 porque papel envuelve a la piedra. JAJAJAJAJ PUTO PERDEDOR ESPABILA"
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
    echo "Enhorabuena, gana el jugador 1 porque la piedra destroza a las tijeras. Sigue así para impedir que gane el jugador 2."
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
    echo "Enhorabuena, gana el jugador 1, con la piedra le abriste la cabeza al lagarto hasta hacer mermelada con sus sesos."
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
    echo "Intentase tirarle la piedra a Spock, pero él la paró con sus poderes psíquicos y gana el jugador 2."
else
    echo
fi

read -p "¿Quieres jugar otra partida? (Y/N): " respuesta
case $respuesta in
[Yy]*) bash juego2.sh ;;
[Nn]*) bash menu.sh ;;
*) echo "Error. Introduce Y o N." ;;
esac
