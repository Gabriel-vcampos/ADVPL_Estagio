/*?? N�vel 1 � B�sico
Exerc�cio 2: Calend�rio Cont�bil
Simule a cria��o de um calend�rio cont�bil:

Solicite do usu�rio o ano.

Use um la�o para montar os 12 meses com cValToChar().

Armazene as datas em um array.

?? Dica: Use For e cValToChar() + AllTrim() para formatar o conte�do.'*/

#INCLUDE 'protheus.ch'
User Function Basico02()

Local aMeses := {}
Local nAno := 0
Local nCount

nAno := FWInputBox("Digite a seguir o ano em que voc� deseja ver o calend�rio: ")
MsgInfo("Ano de " + nAno)

for nCount := 01 to 12
    AAdd(aMeses , nCount)
    MsgInfo(cValToChar(aMeses[nCount]) + " / " + cValToChar(nAno))


Next


Return
