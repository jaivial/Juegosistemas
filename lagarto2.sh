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
echo "El jugador 1 ha elegido Lagarto"

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
    echo "${array[5]}"
    sleep 1
    echo "${array[1]}"
    sleep 1
    echo "${array[4]}"
    sleep 1
    echo "${array[2]}"
    sleep 1
        echo " El Jugador 1 utiliza su lagarto ,intentas atacar al Jugador 2 que utiliza las tijeras. Están roñosas y contagian a tu Lagarto con tétanos. Además le corta la cabeza JAJAJAJAJ. Gana el Jugador 2."
    elif [ "$variableMachine" = "piedra" ]; then
    sleep 1
    source array.sh 
    echo "${array[5]}"
    sleep 1
    echo "${array[1]}"
    sleep 1
    echo "${array[0]}"
    sleep 1
    echo "${array[2]}"
    sleep 1
        echo " El Jugador 2 coge una piedra enorme El Jugador 1 intenta atacar con su lagarto en su intento  de ataque el Jugador 2 aplasta con la piedra al lagarto del Jugador 1 contra el suelo mientras se ríe. Gana el Jugador 2."
    elif [ "$variableMachine" = "papel" ]; then
    sleep 1
      source array.sh 
    echo "${array[5]}"
    sleep 1
    echo "${array[1]}"
    sleep 1
    echo "${array[3]}"
    sleep 1
    echo "${array[2]}"
    sleep 1
        echo "El Jugador 2 utiliza el Papel para intentar defenderse del Lagarto del Jugador 1.El Lagarto devora vilmente al papelito A4 y muerde al Jugador 2. Gana el Jugador 1."
    elif [ "$variableMachine" = "lagarto" ]; then
    sleep 1
      source array.sh 
    echo "${array[5]}"
    sleep 1
    echo "${array[1]}"
    sleep 1
    echo "${array[5]}"
    sleep 1
    echo "${array[2]}"
    sleep 1
        echo "El Jugador 1 lanza su lagarto como si fuese un Pokémon el Jugador 2 se emociona y lanza a su lagarto igual. Los lagarto es vez de pelear huyen y ambos Jugadores perdéis a los Lagartos. Es un Empate."
    elif [ "$variableMachine" = "spock" ]; then
    sleep 1
      source array.sh 
    echo "${array[5]}"
    sleep 1
    echo "${array[1]}"
    sleep 1
    echo "${array[6]}"
    sleep 1
    echo "${array[2]}"
    sleep 1
        echo "El jugador 2 hace cosplay de Spock mientras que el Jugador 1 le pone su Lagarto en el hombro al Jugador 2.El Lagarto le muerde en la oreja al Jugador 2 y este pilla la Rabia .El jugador 1 mira el nuevo cosplay del Jugador 2 de Spock con la rabia y se rie. El jugador 2 muere. El Jugador 1 Gana. "
    else
        echo
    fi


read -p "¿Quieres jugar otra partida? (Y/N): " respuesta
case $respuesta in
    [Yy]*) bash juego2.sh ;;
    [Nn]*) bash menu.sh ;;
    *) echo "Error. Introduce Y o N." ;;
esac