#language: pt

Funcionalidade: configuração de produtos no carrinho de compras
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho de compras e finalizar a compra

Contexto:
Dado que eu esteja na pagina de um produto da EBAC-SHOP
E tente adicionar adicionar o produto ao carrinho

Cenário: configurações do produto preenchidas
Quando eu selecionar o tamanho "M"
E a cor "Preto"
E a quantidade "2"
E clicar no botão "Adicionar ao carrinho"
Então o produto deve ser adicionado ao carrinho com as especificações escolhidas

Cenário: configurações do produto não preenchidas
Quando eu não selecionar o tamanho  ""
E a cor "Preto"
E a quantidade "2"
E clicar no botão "Adicionar ao carrinho"
Então deve exibir uma mensagem de alerta "Por favor, selecione o tamanho do produto."

Cenário: quantidade de produto inválida
Quando eu selecionar o tamanho "M"
E a cor "Preto"
E a quantidade "11"
E clicar no botão "Adicionar ao carrinho"
Então deve exibir uma mensagem de alerta "A quantidade máxima disponível para este produto por compra é 10."

Cenário: limpar configurações do produto
Quando eu selecionar o tamanho "M"
E a cor "Preto"
E a quantidade "2"
E clicar no botão "Limpar"
Então as configurações do produto devem ser limpas