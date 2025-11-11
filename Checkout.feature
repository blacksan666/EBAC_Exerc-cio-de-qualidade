#language: pt

Funcionalidade: Tela de cadastro ao finalizar compra
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro
Para finalizar minha compra


Contexto:
Dado que eu seja direcionado para a pagina de cadastrado ao finalizar a compra no EBAC-SHOP

Cenário: Campos obrigatórios prenchidos corretamente
Quando eu eu preecher o campo nome "João"
E o sobrenome "Silva"
E o endereço "Rua das Flores, 123"
E o cidade "São Paulo"
E o CEP "01234-567"
E o telefone "11999999999"
E o email "Joãosilva123@gmail.com"
E clicar no botão "Finalizar cadastro"
Então deve confirmar o cadastro com a mensagem "Cadastro realizado com sucesso!"


Cenário: Campos preenchidos com dados inválidos
Quando eu eu preecher o campo nome "João"
E o sobrenome "Silva"
E o endereço "Rua das Flores, 123"
E o cidade "São Paulo"
E o CEP "01234-567"
E o telefone "11999999999"
E o email "Joãosilva123#outlook"
E clicar no botão "Finalizar cadastro"
Então deve uma mensagem de erro "Email inválido, por favor verifique e tente novamente."

Cenário: Campos obrigatórios não preenchidos
Quando eu eu preecher o campo nome "João"
E o sobrenome "Silva"
E o telefone "11999999999"
E o email "Joãosilva123@gmail.com"
E clicar no botão "Finalizar cadastro"
Então deve uma mensagem de erro "Por favor, preencha todos os campos obrigatórios."