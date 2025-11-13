#language: pt

Funcionalidade: Tela de cadastro ao finalizar compra
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro
Para finalizar minha compra


Contexto:
Dado que eu seja direcionado para a pagina de cadastrado ao finalizar a compra no EBAC-SHOP

Cenário: Campos obrigatórios prenchidos corretamente
Quando eu preecher todos os campos obrigatórios corretamente e clicar no botão "Finalizar cadastro"
Então deve confirmar o cadastro com a mensagem "Cadastro realizado com sucesso!"


Cenário: Campos preenchidos com dados inválidos
Quando eu eu preecher algum dos campos com dados inválidos e clicar no botão "Finalizar cadastro"
Então deve exibir uma mensagem de erro "dados invalidos, por favor verifique e tente novamente."

Cenário: Campos obrigatórios não preenchidos
Quando eu não preencher todos os campos obrigatórios e clicar no botão "Finalizar cadastro"
Então deve uma mensagem de erro "Por favor, preencha todos os campos obrigatórios."
