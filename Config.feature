#language: pt

Funcionalidade: configuração de produtos no carrinho de compras
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto e escolher a quantidade
Para depois inserir no carrinho de compras e finalizar a compra

Contexto:
Dado que eu esteja na pagina de um produto da EBAC-SHOP e tente adicionar adicionar o produto ao carrinho

Cenário: configurações do produto preenchidas
Quando eu preecher todos as configurações do produto e clicar no botão "Adicionar ao carrinho"
Então o produto deve ser adicionado ao carrinho com as especificações escolhidas

Cenário: configurações do produto não preenchidas
Quando eu não selecionar alguma das especificações do produto e clicar no botão "Adicionar ao carrinho"
Então deve exibir uma mensagem de alerta "Por favor, selecione todas as especificações de produto antes de adicionar ao carrinho."

Cenário: quantidade de produto inválida
Quando eu selecionar uma quantidade acima do limite permitido de 10 unidades e clicar no botão "Adicionar ao carrinho"
Então deve exibir uma mensagem de alerta "A quantidade máxima disponível para este produto por compra é de 10 unidades."

Cenário: limpar configurações do produto
Quando eu selecionar todas as configurações do produto
E clicar no botão "Limpar"
Então as configurações do produto devem ser limpas
