#!/bin/bash
echo "Has elegido lagarto"
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
        echo "Intentas atacar a las tijeras. Están roñosas y te contagian con tétanos. Además te corta la cabeza JAJAJAJAJ. Has perdido."
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
        echo "Hay una piedra enorme pero en tu intento de atacar te machaca contra el suelo mientras se ríe. Menuda piedra más rara. Has perdido."
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
        echo "Ves un cachito inofensivo de papel. Devoras vilmente al papelito A4. Has ganado, obviamente."
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
        echo "Parece que te estás mirando al espejo. Ah no, es otro lagarto. Empate porque se ponen a copular como seres no racionales."
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
        echo "Envenenas al pavo este raro. Mírale las cejas, qué raro coño. Has ganado."
    else
        echo
    fi


read -p "¿Quieres jugar otra partida? (Y/N): " respuesta
case $respuesta in
    [Yy]*) bash juego.sh ;;
    [Nn]*) bash menu.sh ;;
    *) echo "Error. Introduce Y o N." ;;
esac