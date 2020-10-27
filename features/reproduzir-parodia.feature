#language: pt

Funcionalidade: Reproduzir Parodia
    Sendo um usuário cadastrado
    Quero reproduzir musicas no player do Parodify
    Para que eu possa ouvir as parodias das minhas bandas favoritas

    Contexto: Login
        * Login com "matheus.amim@hotmail.com" e "pwd123"

    Cenário: Ouvir Paródia

        Dado que eu gosto muito de "Rock"
        Quando toco a seguinte canção:
            | parodia | Sprints de Luta Sprints de Gloria |
            | banda   | Charlie Brown Bug                 |
        Então essa paródia deve ficar em modo de reprodução