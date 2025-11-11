            #language: pt

            Funcionalidade: Tela de login
            Como cliente da EBAC-SHOP
            Quero fazer login
            Para visualizar meus produtos

            Contexto:
            Dado que eu acesse a pagina de login do EBAC-SHOP

            Cenário: Autenticação Valida

            Quando eu digitar o usuário "Joãosilva123@gmail.com"
            E a senha "senhadaebac1234"
            Então deve exibir uma mensagem de boas vindas "Olá João"

            Cenário: Usuario inexistente
            Quando eu digitar o usuário "Dev@gmail.com.br"
            E a senha "senhadaebac1234"
            Então deve exibir uma mensagem de alerta: "Usuario não cadastrado"

            Cenário: Usuario com senha invalida
            Quando eu digitar o usuário "Joãosilva123@gmail.com"
            E a senha "senhadaebac4321"
            Então deve exibir uma mensagem de alerta "Usuário ou senha invalida"

            Cenário: Autenticar multiplos usuários
            Quando eu digitar <usuario>
            E a <senha>
            Então deve exibir a <mensagem> de sucesso

            Exemplos:
            | usuario                  | senha             | mensagem                    |
            | "Joãosilva123@gmail.com" | "senhadaebac1234" | "Olá João"                  |
            | "Dev@gmail.com.br"       | "senhadaebac1234" | "Usuario não cadastrado"    |
            | "Joãosilva123@gmail.com" | "senhadaebac4321" | "Usuário ou senha invalida" |