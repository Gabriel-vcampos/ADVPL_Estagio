#INCLUDE 'protheus.ch'

User function maluco2()

/*?? Exercício 2 – Cálculo de Fatorial
Objetivo: Trabalhar For, If e variáveis numéricas.

Descrição:
Solicite ao usuário um número inteiro e calcule o seu fatorial. Mostre o processo 
(ex: 5 x 4 x 3 x 2 x 1 = 120) e o resultado final.

Desafio Extra: Não permita números menores que 0 (valide com If).*/
Local i := 1
MsgAlert("Bem-vindo ao cálculo de fatorial")
nNumeroFatorial := Val(FWInputBox("Digite o valor que será realizado no fatorial:"))
nProduto := nNumeroFatorial

if (nNumeroFatorial < 0)
    MsgAlert("Impossível fatorial menor que 0! Insira um valor válido")
    else
        

For  i := 1 to nNumeroFatorial-1
nProduto *= i
    
Next

MsgAlert("O valor do fatorial de " + cValToChar(nNumeroFatorial) +  "!" + " é igual a: " + cValToChar(nProduto))

Return

EndIf
