#INCLUDE 'protheus.ch'

User function maluco2()

/*?? Exerc�cio 2 � C�lculo de Fatorial
Objetivo: Trabalhar For, If e vari�veis num�ricas.

Descri��o:
Solicite ao usu�rio um n�mero inteiro e calcule o seu fatorial. Mostre o processo 
(ex: 5 x 4 x 3 x 2 x 1 = 120) e o resultado final.

Desafio Extra: N�o permita n�meros menores que 0 (valide com If).*/
Local i := 1
MsgAlert("Bem-vindo ao c�lculo de fatorial")
nNumeroFatorial := Val(FWInputBox("Digite o valor que ser� realizado no fatorial:"))
nProduto := nNumeroFatorial

if (nNumeroFatorial < 0)
    MsgAlert("Imposs�vel fatorial menor que 0! Insira um valor v�lido")
    else
        

For  i := 1 to nNumeroFatorial-1
nProduto *= i
    
Next

MsgAlert("O valor do fatorial de " + cValToChar(nNumeroFatorial) +  "!" + " � igual a: " + cValToChar(nProduto))

Return

EndIf
