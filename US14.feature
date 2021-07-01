Feature: US14: Recompensas diarias
    Como usuario quiero recibir un pequeño bonos o recompensa para
    motivarme a seguir usando la aplicación cada día

    Scenario: SC19: Recompensa recibida exitosamente por uso diario de la app
        AC22: Recompensa diaria recibida
        Given que el usuario inició sesión en la app durante 5 días seguidos
        When ingrese a la aplicación el 5to día
        Then recibirá una bonificación de puntos

        Examples:
            | Menú        | Progress Bar | Mensaje               | Bonificación                                  |
            | Recompensas | Completada   | ¡Recompensa recibida! | El usuario recibe 1000 puntos para el ranking |


    Scenario: SC20: Recompensa de uso diario de la app no recibida
        AC22: Recompensa diaria perdida
        Given que el usuario no inició sesión en la app durante 5 días seguidos
        When ingrese a la aplicación
        Then observará que la barra de progreso de la recompensa se reestableció

        Examples:
            | Menú        | Progress Bar | Mensaje                                      | Bonificación                      |
            | Recompensas | 0%           | ¡Ingresa por 5 días seguidos para conseguir! | El usuario no recibe bonificación |


        AC23: Recompensa diaria en progreso
        Given que el usuario va por el día 3 de los 5 necesarios
        When ingrese al menú Recompensas
        Then observará que la barra de progreso de la recompensa está avanzando

        Examples:
            | Menú        | Progress Bar | Mensaje                                      | Bonificación                      |
            | Recompensas | 60%          | ¡Te faltan 2 días para lograr la recompensa! | El usuario no recibe bonificación |
