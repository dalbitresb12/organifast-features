Feature: US20: Sección de juegos
    Como usuario quiero observar una sección de juegos como premio 
    al cumplimiento de mis actividades para tener un tiempo de relajo luego de una jornada pesada.

Scenario: SC26: Minijuegos desbloqueados
AC29: Acceso permitido a minijuegos
Given cumplí con mis actividades registradas
When corrobore el cumplimiento
Then la app me dará acceso a los minijuegos desbloqueados
Examples:
    |    Menú    | Progress Bar de Actividades |       Mensaje       |
    | Minijuegos |             100%            | Minijuego aleatorio |


Scenario: SC27: Minijuegos bloqueados
AC30: Acceso denegado a minijuegos
Given no cumplí con mis actividades
When quieran ingresas a la sección minijuegos
Then la app bloqueará esa sección
Examples:
    |    Menú    | Progress Bar de Actividades |                             Mensaje                            |
    | Minijuegos |             50%             | Completa tus actividades al 100% para acceder a los minijuegos |
