/*?? Nível 1 – Básico
Exercício 1: Array de Produtos Simples
Crie uma função ADVPL que:

Declare um array com 3 produtos fictícios.

Exiba o nome de cada produto com um For.

Use ConOut() para mostrar no console.

?? Dica: Relembre o uso de AAdd() e For.*/

#INCLUDE 'protheus.ch'
User Function Basico01()
    Local aProdutos := {}
    Local cNomeProdutos
    Local nCount := 1

    
    for nCount := 1 to 3
    cNomeProdutos := FWInputBox("Digite a seguir o produto a ser inserido:")
    AAdd(aProdutos,cNomeProdutos)
        MsgInfo("O seguinte produto foi inserido na Tabela: " + aProdutos[nCount])

    Next

    MsgInfo("Todos os produtos foram inseridos na Tabela!")

Return
