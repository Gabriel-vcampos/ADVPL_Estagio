#include 'protheus.ch'
#include 'parmtype.ch'

user function BANCO004()
	
	Local aArea := SB1->(GetArea())
	
	DbSelectArea('SB1')
	Sb1->(DbSetOrder(1))
	Sb1->(DbGoTop())
	
	// Iniciar a transa��o.
	Begin Transaction
	
		MsgInfo("A descri��o do produto ser� alterada!", "Aten��o")
		
	If SB1->(DbSeek(FWxFilial('SB1') + '123456'))
		RecLock('SB1', .F.) //Trava registro para altera��o
	Replace B1_DESC With "PENDRIVE"
	
		SB1->(MsUnlock())
	EndIf
		MsgAlert("Altera��o efetuada!", "Aten��o")
	//	DisarmTransaction()
	End Transaction
	RestArea(aArea)
	
return
