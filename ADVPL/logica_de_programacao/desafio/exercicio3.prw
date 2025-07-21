/*?? Exerc�cio 3 (Novo) � Controle de Estoque com Repeti��o
Objetivo: Praticar Array, For, If, While, e manipula��o de dados.

Descri��o:
Crie um programa que simule o cadastro de at� 5 produtos. Para cada produto, pe�a:

Nome do produto

Quantidade em estoque

Pre�o unit�rio

Regras:

N�o aceite quantidade ou pre�o negativos (use While para validar).

Ao final, exiba uma listagem com todos os produtos, suas quantidades, pre�os e o valor total em estoque por 
item (quantidade * pre�o).

Desafio Extra:
Mostre tamb�m o valor total de todos os produtos juntos (soma dos totais individuais).*/

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
        Alert("Aviso! Valor negativo n�o permitido!")
        nEstoque := Val(FWInputBox("Informe novamente qual a quantidade do estoque do produto:" + cValToChar(cNome)))
    end while

    nPrecoProduto := Val(FWInputBox("Qual o pre�o do produto:" + cValToChar(cNome)))

    while nPrecoProduto < 0
        Alert("Aviso! Valor negativo n�o permitido!")
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
             " | Pre�o: R$ " + cValToChar(aPrecoUnitarioProduto[x]) + ;
             " | Total em estoque: R$ " + cValToChar(nTotalProduto))

    Next
    

Return
