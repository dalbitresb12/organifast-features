Feature: US30: Logros escolares
    Como escolar quiero observar una sección de logros del juego y
    de actividades faltantes para mas detalle de mis méritos.

    Scenario: SC38: Observa la sección de logros para Escolares
        AC42: Logros escolares
        Given se puede conseguir logros escolares
        When  completas cierta cantidad de actividades
        Then ganas reconocimiento entre los usuarios jovenes
        Examples:
            | Sección          | Total de logros | Logros conseguidos |
            | Logros Escolares | 10              | 1                  |
