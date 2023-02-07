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
echo "El jugador 1 ha elegido tijeras"

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
    bash tijeras2.sh
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
        echo "Los dos os encontráis en un callejón oscuro bajo la luz intermitente de una farola, sacáis vuestras tijeras pero al atacar se encajan las dos y se rompen. Como no tenéis pelotas para continuar peleando con los puños os vais a vuestra casa y nadie gana. ¡EMPATE!"
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
        echo "Vas de chulo con que tienes unas tijeras especiales para zurdos pero el tonto del pueblo te lanza una piedra y te abre la cabeza. GANA EL JUGADOR 2"
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
        echo "El jugador 2 se cree un crack en papiroflexia y se monta un ejercito de aviones caza con bombas nucleares con un trozo de papel, pero jugador 1 es como la vida y te quita los sueños con un simple corte de tijeras. El jugador 1 en realidad no le ha hecho nada al jugador 2, pero este, al ver sus sueños frustrados, cae en depresión y se suicida. ¡GANA JUGADOR 1!"
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
        echo "El jugador 1 se marca una revolución francesa y decapita con sus tijeras al lagarto del jugador 2. Alguien por la calle graba el combate, lo sube a redes sociales y los grupos sociales pro animalaistas denuncian al jugador 1 por maltrato animal. El combate lo gana el jugador 1, pero ahora está pendiente del fallo del juez pudiendo afrontar una pena de entre 3 a 4 años de prisión."
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
        echo "El jugador 1 saca unas tijeras para enfrentarse en combate, pero el jugador 2 llama a su primo 'El Spock' que tiene muy mala hostia y le infla a yoyas al jugador 1. ¡GANA EL JUGADOR 2!"
    else
        echo
    fi


read -p "¿Quieres jugar otra partida? (Y/N): " respuesta
case $respuesta in
    [Yy]*) bash juego2.sh ;;
    [Nn]*) bash menu.sh ;;
    *) echo "Error. Introduce Y o N." ;;
esac