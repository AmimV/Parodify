#language: pt

Funcionalidade: Login
    Sendo um usuário previamente cadastrado
    Quero acessar o sistema com meu email e senha
    Para que eu possa ter acesso as playlists do Parodify

    @smoke
    Cenario: Login do usuário

        Dado que acesso a página Login
        Quando submeto minhas credencias com: "matheus.amim@hotmail.com" e "pwd123"
        Então devo ser redirecionado para a área logada

    Esquema do Cenário: Tentativa de login

        Dado que acesso a página Login
        Quando submeto minhas credencias com: "<email>" e "<password>"
        Então devo ver a mensagem de erro: "Opps! Dados de acesso incorretos!"

        Exemplos:
            | email                  | password |
            | matheus.amiim@live.com | olamundo |
            |                        | olamundo |
            | matheus.amiim@live.com |          |
            |                        |          |