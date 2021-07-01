Feature: US20: Sección de juegos
    Como usuario quiero observar una sección de juegos como premio
    al cumplimiento de mis actividades para tener un tiempo de relajo luego de una jornada pesada.

    Scenario: SC26: Minijuegos desbloqueados
        AC29: Acceso permitido a minijuegos
        Given cumplí con mis actividades registradas
        When corrobore el cumplimiento
        Then la app me dará acceso a los minijuegos desbloqueados
        Examples:
            | Menú       | Progress Bar de Actividades | Mensaje                | Minijuego                                                   |
            | Minijuegos | 100%                        | Minijuego desbloqueado | El usuario puede elegir entre los minjuegos según le gusten |

        Minijuegos posibles:
        * Laberintos
        * Minijuegos estilo Candy Crush
        * Minijuegos de memoria
        * Carreras entre usuarios
        * Sudokus
        * Sopas de letras
        * Minijuegos de cartas online (UNO, ochos locos, etc)
        * Crucigramas
        * Peleas contra seres mitológicos: dragones, minotauros, etc. El usuario puede activar la RA para mejor experiencia
        * Búsqueda del tesoro con simulador de realidad aumentada para que el usuario recorra su casa (RA).

    Scenario: SC27: Minijuegos bloqueados
        AC30: Acceso denegado a minijuegos
        Given no cumplí con mis actividades
        When quieran ingresas a la sección minijuegos
        Then la app bloqueará esa sección
        Examples:
            | Menú       | Progress Bar de Actividades | Mensaje                                                        | Minijuego    |
            | Minijuegos | 50%                         | Completa tus actividades al 100% para acceder a los minijuegos | No disponile |
