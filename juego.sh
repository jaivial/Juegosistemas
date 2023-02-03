if [ "$variableUser" = "papel" ]; then
    if [ "$variableMachine" = "papel" ]; then
        echo "¡Tablas! Habéis quedado empate. Los papeles unen fuerzas para formar un folio pero ninguno gana."
    elif [ "$variableMachine" = "piedra" ]; then
        echo "En una ardúa batalla consigues enrrollar a la piedra con tu papel. Sales victorioso por esta vez..."
    elif [ "$variableMachine" = "tijeras" ]; then
        echo "En un intento de ataque, la tijera te ha partido brutalmente en dos. ¿En serio pensabas ganar a unas tijeras usando un papel? Pierdes la partida XD"
    elif [ "$variableMachine" = "lagarto" ]; then
        echo "Un lagarto enorme acaba de devorarte. Has contribuido a que continue la cadena alimenticia, pero pierdes la partida."
    elif [ "$variableMachine" = "spock" ]; then
        echo "Acabas de desautorizar a Spock y con ello contribuir a la destrucción de La MATRIX. Tú Ganas."
    else
        echo
    fi
fi
