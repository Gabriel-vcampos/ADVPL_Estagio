#INCLUDE 'protheus.ch'

User Function Variavel()

	Local cVariavel1 := "Olá! Meu nome é Gabriel!"
	Local cVariavel2 := "Estou estudando AVPL"
	Local cFrasecompleta := (cValToChar(cVariavel1) + " " + cValToChar(cVariavel2))
	MsgAlert(cFrasecompleta)

Return
