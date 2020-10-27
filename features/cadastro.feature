#language: pt

Funcionalidade: Cadastro de usuarios
    Sendo um visitante do site Parodify
    Quero fazer o meu cadastro
    Para que eu possa ouvir minhas músicas favoritas

    @happy
    Cenario: Cadastro
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com:
            | email            | thiago.trb14@gmail.com |
            | password         | pwd123                 |
            | confirm_password | pwd123                 |
        Então devo ser redirecionado para a área logada

    Esquema do Cenário: Tentativa de Cadastro
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com:
            | email            | <email>            |
            | password         | <password>         |
            | confirm_password | <confirm_password> |
        Então devo ver a mensagem: "<mensagem_saida>"
        @nohappy
        Exemplos:
            | email            | password | confirm_password | mensagem_saida                       |
            |                  | pwd123   | pwd123           | Oops! Informe seu email.             |
            | amimvi@gmail.com |          |                  | Oops! Informe sua senha.             |
            | amimvi@gmail.com | pwd123   | abc123           | Oops! Senhas não são iguais.         |
            |                  |          |                  | Oops! Informe seu email e sua senha. |

    @temp
    Cenario: Validação do campo email

        Quando acesso a página de cadastro
        Então deve exibir o seguinte css: "input[type=email]"