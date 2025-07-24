/*?? Nível 1 – Básico
Exercício 2: Calendário Contábil
Simule a criação de um calendário contábil:

Solicite do usuário o ano.

Use um laço para montar os 12 meses com cValToChar().

Armazene as datas em um array.

?? Dica: Use For e cValToChar() + AllTrim() para formatar o conteúdo.'*/

#INCLUDE 'protheus.ch'
User Function Basico02()

Local aMeses := {}
Local nAno := 0
Local nCount

nAno := FWInputBox("Digite a seguir o ano em que você deseja ver o calendário: ")
MsgInfo("Ano de " + nAno)

for nCount := 01 to 12
    AAdd(aMeses , nCount)
    MsgInfo(cValToChar(aMeses[nCount]) + " / " + cValToChar(nAno))


Next


Return
