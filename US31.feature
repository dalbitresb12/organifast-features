Feature: US31: Logros universitarios
    Como universitario quiero observar en la sección de logros los
    requerimientos para obtener dicho logro para ganarme reputación entre los usuarios.

Scenario: SC39: Observa la sección de logros para Universitarios
AC34: Logros universitarios
Given se puede conseguir logros universitarios
When completas cierta cantidad de actividades
Then ganas reconocimiento entre los usuarios
Examples:
    |      Sección     | Total de logros | Logros conseguidos |
    | Logros Escolares |        8        |          2         |
