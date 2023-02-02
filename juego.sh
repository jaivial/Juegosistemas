#!/bin/bash

echo '''
    ⠀⠀⠀⠀⠀⣠⡴⠖⠒⠲⠶⢤⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡴⠖⠒⢶⣄⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⢀⡾⠁⠀⣀⠔⠁⠀⠀⠈⠙⠷⣤⠦⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡼⠋⠀⠀⠀⢀⡿⠀⠀⠀⠀⠀⠀⠀
    ⣠⠞⠛⠛⠛⠋⠉⠀⠀⠀⠀⠀⠀⠀⠀⠘⢧⠈⢿⡀⢠⡶⠒⠳⠶⣄⠀⠀⠀⠀⠀⣴⠟⠁⠀⠀⠀⣰⠏⠀⢀⣤⣤⣄⡀⠀⠀
    ⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠟⠛⠛⠃⠸⡇⠈⣇⠸⡇⠀⠀⠀⠘⣇⠀⠀⣠⡾⠁⠀⠀⠀⢀⣾⣣⡴⠚⠉⠀⠀⠈⠹⡆⠀
    ⣹⡷⠤⠤⠤⠄⠀⠀⠀⠀⢠⣤⡤⠶⠖⠛⠀⣿⠀⣿⠀⢻⡄⠀⠀⠀⢻⣠⡾⠋⠀⠀⠀⠀⣠⡾⠋⠁⠀⠀⠀⠀⢀⣠⡾⠃⠀
    ⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡤⠖⠋⢀⣿⣠⠏⠀⠀⣿⠀⠀⠀⠘⠉⠀⠀⠀⠀⠀⡰⠋⠀⠀⠀⠀⠀⣠⠶⠋⠁⠀⠀⠀
    ⢿⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡾⠋⠁⠀⠀⠠⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠁⠀⠀⠀⢀⣴⡿⠥⠶⠖⠛⠛⢶⡄
    ⠀⠉⢿⡋⠉⠉⠁⠀⠀⠀⠀⠀⢀⣠⠾⠋⠀⠀⠀⠀⢀⣰⡇⠀⠀⢀⡄⠀⠀⠀⠀⠀⠀⠀⠀⢀⡴⠋⠀⠀⠀⠀⠀⢀⣠⠼⠃
    ⠀⠀⠈⠛⠶⠦⠤⠤⠤⠶⠶⠛⠋⠁⠀⠀⠀⠀⠀⠀⣿⠉⣇⠀⡴⠟⠁⣠⡾⠃⠀⠀⠀⠀⠀⠈⠀⠀⠀⣀⣤⠶⠛⠉⠀⠀⠀
    ⠀⠀⠀⠀⢀⣠⣤⣀⣠⣤⠶⠶⠒⠶⠶⣤⣀⠀⠀⠀⢻⡄⠹⣦⠀⠶⠛⢁⣠⡴⠀⠀⠀⠀⠀⠀⣠⡶⠛⠉⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⢀⡴⠋⣠⠞⠋⠁⠀⠀⠀⠀⠙⣄⠀⠙⢷⡀⠀⠀⠻⣄⠈⢷⣄⠈⠉⠁⠀⠀⠀⢀⣠⡴⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⢀⡾⠁⣴⠋⠰⣤⣄⡀⠀⠀⠀⠀⠈⠳⢤⣼⣇⣀⣀⠀⠉⠳⢤⣭⡿⠒⠶⠶⠒⠚⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⢸⠃⢰⠇⠰⢦⣄⡈⠉⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠉⠉⠛⠛⠓⠲⢦⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠸⣧⣿⠀⠻⣤⡈⠛⠳⠆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠈⠹⣆⠀⠈⠛⠂⠀⠀⠀⠀⠀⠀⠈⠐⠒⠒⠶⣶⣶⠶⠤⠤⣤⣠⡼⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠹⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠳⢦⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠈⠻⣦⣀⠀⠀⠀⠀⠐⠲⠤⣤⣀⡀⠀⠀⠀⠀⠀⠉⢳⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⠶⠤⠤⠤⠶⠞⠋⠉⠙⠳⢦⣄⡀⠀⠀⠀⡷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠳⠦⠾⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    '''

echo "| PIEDRA | PAPEL | TIJERAS | LAGARTO | SPOCK |"
echo "=============================================="
echo "1.- Sacar Piedra"
echo "2.- Sacar Papel"
echo "3.- Sacar Tijeras"
echo "4.- Sacar Lagarto"
echo "5.- Sacar Spock"
echo "6.- Cancelar partida"
read -p "Selecciona una opción: " opcion


##Switch case que da un valor a la variable elegida por el usuario.
case "$opcion" in 
"1")
    echo "Has elejido Piedra"
    variableUser="piedra"
    ;;
"2")
    echo "Has elejido Papel"
    variableUser="papel"
    ;;
"3")    
    echo "Has elejido Tijeras"
    variableUser="tijeras"
;;
"4")
    echo "Has elejido Lagarto"
    variableUser="lagarto"
;;
"5")
    echo "Has elejido Spock"
        variableUser="spock"
;;
"6")
    echo "Vas a abandonar la partida."
    source menu.sh
;;
*)
    echo "La opción introducida no es correcta, teclea un número del 1 al 6."
;;
esac



##Función que elige un número aleatorio del 1 al 5, es la opción que elige la máquina.
sleep 1
num=$(( ( $RANDOM % 5 ) + 1 ))
sleep 1
echo "El número aleatorio elegido es: $num"

##Switch case que da un valor a la variable elegida aleatoriamente por la máquina.
case "$num" in 
"1")
    echo "La máquina ha elejido Piedra"
    variableMachine="piedra"
    ;;
"2")
    echo "La máquina ha elejido Papel"
    variableMachine="papel"
    ;;
"3")    
    echo "La máquina ha elejido Tijeras"
    variableMachine="tijeras"
;;
"4")
    echo "La máquina ha elejido Lagarto"
    variableMachine="lagarto"
;;
"5")
    echo "La máquina ha elejido Spock"
    variableMachine="spock"
;;
esac



##Estructura if para enfrentar en combate cada opción y seleccionar un ganador.
##Usuario saca piedra
sleep 1
if [ "$variableUser" = "piedra" ] && [ "$variableMachine" = "piedra" ];
then
    echo "¡Tablas! Habéis quedado empate. Las dos piedras chocan pero ninguna gana"
elif [ "$variableUser" = "piedra" ] && [ "$variableMachine" = "papel" ];
then  
    echo "Gana la máquina porque papel gana a piedra. JAJAJAJAJ PUTO PERDEDOR ESPABILA"
elif [ "$variableUser" = "piedra" ] && [ "$variableMachine" = "tijeras" ];
then  
    echo "Enohorabuena ganas tú porque la piedra destroza a las tijeras. Sigue así para impedir que gane la MATRIX"
    elif [ "$variableUser" = "piedra" ] && [ "$variableMachine" = "lagarto" ];
then  
    echo "Enohorabuena ganas tú con la piedra le abriste la cabeza al lagarto hasta hacer mermelada con sus sesos."
elif [ "$variableUser" = "piedra" ] && [ "$variableMachine" = "spock" ];
then  
    echo "Intentase tirarle la piedra a Spock, pero él la paró con sus poderes psíquicos y gana la máquina. La MATRIX está avanzando en su conquista."
else
    echo "Esto es una prueba"
fi
##Usuario saca papel
if [ "$variableUser" = "papel" ] && [ "$variableMachine" = "papel" ];
then
    echo "¡Tablas! Habéis quedado empate. Los papeles unen fuerzas para formar un folio pero ninguno gana."
elif [ "$variableUser" = "papel" ] && [ "$variableMachine" = "piedra" ];
then  
    echo "En una ardúa batalla consigues enrrollar a la piedra con tu papel. Sales victorioso por esta vez..."
elif [ "$variableUser" = "papel" ] && [ "$variableMachine" = "tijeras" ];
then  
    echo "En un intento de ataque, la tijera te ha partido brutalmente en dos. ¿En serio pensabas ganar a unas tijeras usando un papel? Pierdes la partida XD"
    elif [ "$variableUser" = "papel" ] && [ "$variableMachine" = "lagarto" ];
then  
    echo "Un lagarto enorme acaba de devorarte. Has contribuido a que continue la cadena alimenticia, pero pierdes la partida."
elif [ "$variableUser" = "papel" ] && [ "$variableMachine" = "spock" ];
then  
    echo "Acabas de desautorizar a Spock y con ello contribuir a la destrucción de La MATRIX. Tú Ganas."
else
    echo "Esto es una prueba"
fi

##Usuario saca tijeras
if [ "$variableUser" = "tijeras" ] && [ "$variableMachine" = "tijeras" ];
then
    echo "¡Tablas! Haceis la tijera, ambas disfrutáis asi que no gana nadie."
elif [ "$variableUser" = "tijeras" ] && [ "$variableMachine" = "piedra" ];
then  
    echo "Te impacta una piedra desde el cielo. La piedra te destroza física y emocionalmente, caes en depresión y pierdes la partida."
elif [ "$variableUser" = "tijeras" ] && [ "$variableMachine" = "papel" ];
then  
    echo "Un papel con aires de superioridad se acerca a ti. Sin ni siquiera inmutarte lo partes por la mitad. Tú Ganas."
    elif [ "$variableUser" = "tijeras" ] && [ "$variableMachine" = "lagarto" ];
then  
    echo "Te encuentras con un lagarto diminuto y le cortas la cabeza a sangre fría. Eres un monstruo sin sentimientos... pero has ganado la partida."
elif [ "$variableUser" = "tijeras" ] && [ "$variableMachine" = "spock" ];
then  
    echo "Spock te rompe. Ni siquiera ha necesitado usar sus poderes psíquicos... Eres débil, pierdes la partida."
else
    echo "Esto es una prueba"
fi