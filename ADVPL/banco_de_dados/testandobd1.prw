#INCLUDE 'protheus.ch'
User function exemplobd1()

Local aArea := SB1->(GetArea()) //	Captura e guarda o contexto atual da �rea de trabalho

DBSelectArea("SB1") //	Seleciona a tabela SB1 para leitura ou escrita.

SB1->(DBSetOrder(1)) //	Define a ordem de �ndice da tabela. O n�mero indica qual �ndice ser� usado

SB1->(DBGoTop()) // 	Posiciona o ponteiro no primeiro registro da tabela.

if SB1->(DBSeek(FWXFilial("SB1") + "123457"))
MsgInfo(SB1->B1_Desc)

EndIf


RestArea(aArea)
Return
