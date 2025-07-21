/*📘 Exercício 1 – Cadastro de Produtos com Validação
Objetivo: Trabalhar variáveis, While e If.

Descrição:
Crie um programa que peça ao usuário o nome de um produto e o seu preço. O sistema deve validar se o 
preço é positivo. Caso não seja, deve pedir novamente. Ao final, exiba uma mensagem com o nome do produto e o 
preço formatado.

Desafio Extra: Use While para repetir o processo até que o preço esteja correto.

*/
#INCLUDE 'protheus.ch'

User function exdesafiocadastro()
    
    Local aNomeProdutos := {}
    Local aPrecoProdutos := {}
    Local cNome := ""
    Local nPreco := 0
    Local nResposta := 1
    Local i := 0

    MsgAlert("Bem-vindo ao Cadastro de Produtos!")

    While nResposta == 1
        cNome := FWInputBox("Digite o nome do produto:")
        
        
        nPreco := Val(FWInputBox("Digite o preço do produto:"))
        While nPreco <= 0
            MsgAlert("❌ Preço inválido! Digite um valor maior que zero.")
            nPreco := Val(FWInputBox("Digite novamente o preço do produto:"))
        End While

        AAdd(aNomeProdutos, cNome)
        AAdd(aPrecoProdutos, nPreco)

        nResposta := Val(FWInputBox("Deseja: 1 - Cadastrar novo produto 2 - Mostrar produtos 3 - Sair"))

        If nResposta == 2
            MsgAlert("📋 Produtos cadastrados:")
            For i := 1 To Len(aNomeProdutos)
                MsgInfo("Produto: " + aNomeProdutos[i] + " | Preco: R$ " + Str(aPrecoProdutos[i],10,2))
            Next
            nResposta := 3 // Encerra após mostrar
        EndIf
    End While

Return




Return
