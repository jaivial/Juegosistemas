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
echo "El jugador 1 ha elegido papel"

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
    bash papel2.sh
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
    echo "Los papeles unen fuerzas para formar un folio pero ninguno gana. Habéis empatado."
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
    echo "En una ardúa batalla consigues enrrollar a la piedra con tu papel. Jugador 1... Sales victorioso por esta vez..."
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
    echo "En un intento de ataque, la tijera te ha partido brutalmente en dos. ¿En serio pensabas ganar a unas tijeras usando un papel? Jugador 1, pierdes la partida XD"
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
    echo "Un lagarto enorme acaba de devorarte. Has contribuido a que continue la cadena alimenticia. Jugador 2 gana."
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
    echo "Acabas de desautorizar a Spock y con ello contribuir a la destrucción de La MATRIX. Gana el jugador 1."
else
    echo
fi

read -p "¿Quieres jugar otra partida? (Y/N): " respuesta
case $respuesta in
[Yy]*) bash juego2.sh ;;
[Nn]*) bash menu.sh ;;
*) echo "Error. Introduce Y o N." ;;
esac
