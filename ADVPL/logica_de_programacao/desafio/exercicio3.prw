/*?? Exercício 3 (Novo) – Controle de Estoque com Repetição
Objetivo: Praticar Array, For, If, While, e manipulação de dados.

Descrição:
Crie um programa que simule o cadastro de até 5 produtos. Para cada produto, peça:

Nome do produto

Quantidade em estoque

Preço unitário

Regras:

Não aceite quantidade ou preço negativos (use While para validar).

Ao final, exiba uma listagem com todos os produtos, suas quantidades, preços e o valor total em estoque por 
item (quantidade * preço).

Desafio Extra:
Mostre também o valor total de todos os produtos juntos (soma dos totais individuais).*/

#INCLUDE 'protheus.ch'

User function maluco3()

    Local i := 1
    Local x := 1
    aNomeProduto= {}
    aEstoqueProduto = {}
    aPrecoUnitarioProduto = {}
    Local cNome
    Local nPrecoProduto
    Local nEstoque
    Local nTotalProduto := 0

    for i:=1 to 5
    cNome := FWInputBox("Qual o nome do produto " + cValToChar(i))
    nEstoque := Val(FWInputBox("Qual a quantidade do estoque do produto:" + cValToChar(cNome)))

    while nEstoque < 0
        Alert("Aviso! Valor negativo não permitido!")
        nEstoque := Val(FWInputBox("Informe novamente qual a quantidade do estoque do produto:" + cValToChar(cNome)))
    end while

    nPrecoProduto := Val(FWInputBox("Qual o preço do produto:" + cValToChar(cNome)))

    while nPrecoProduto < 0
        Alert("Aviso! Valor negativo não permitido!")
        nPrecoProduto := Val(FWInputBox("Informe novamente qual o preco do produto:" + cValToChar(cNome)))
    end while

    AAdd(aNomeProduto, cNome)
    AAdd(aEstoqueProduto, nEstoque)
    AAdd(aPrecoUnitarioProduto, nPrecoProduto)

    Next

    for x := 1 To len(aNomeProduto)
    nTotalProduto := aEstoqueProduto[x] * aPrecoUnitarioProduto[x]
    MsgAlert("Produto: " + aNomeProduto[x] + ;
             " | Estoque: " + cValToChar(aEstoqueProduto[x]) + ;
             " | Preço: R$ " + cValToChar(aPrecoUnitarioProduto[x]) + ;
             " | Total em estoque: R$ " + cValToChar(nTotalProduto))

    Next
    

Return
