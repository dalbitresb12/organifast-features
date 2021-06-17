Feature: US22: Minijuegos con RA
    Como escolar de 3ero de secundaria quiero que los minijuegos que desbloquee puedan verse 
    en realidad aumentada con la cámara para gozar de una mejor experiencia en la app

Scenario: SC29: Visualización de minijuegos RA mediante a cámara
AC32: RA con cámara
Given elegí ver los minjuegos con realidad aumentada
When active la cámara de mi dispositivo
Then veré el minijuego como parte del entorno real
Examples:
    |    Menú    | Opción: RA |                             Mensaje                            |
    | Minijuegos |  Activada  | Minijuego en pantalla como parte del entorno captado en cámara |


Scenario: SC30: Falla en la visualización de la RA
AC33: Acceso a la cámara denegado
Given que el usuario negué el acceso a la cámara en la aplicación
When intente ver el minijuego con RA
Then le saldrá un aviso para configurar los permisos de cámara
Examples:
    |    Menú    |  Opción: RA |                       Mensaje                      |
    | Minijuegos | Desactivada | Active los permisos de cámara para acceder a la RA |


AC34: Incompatibilidad de dispositivo
Given el dispositivo es incompatible con la tecnología propuesta (gama baja o dispositivo antiguo)
When intente ver el minijuego con RA
Then me saldrá un aviso de incompatibilidad 
Examples:
    |    Menú    |  Opción: RA |                         Mensaje                        |
    | Minijuegos | Desactivada | Lo sentimos, su dispositivo no es compatible con la RA |
