#INCLUDE 'Protheus.ch'

User Function DoCase()

	Local cData := "25/12/2015"

	Do Case

	Case cData == "25/12/2017"
		MsgAlert("Hoje � dia: " + cValToChar(cData) + " Hoje � natal de 2017")

	Case cData == "25/12/2018"
		MsgAlert("Hoje � dia: " + cValToChar(cData) + " Hoje � natal de 2018")

	Case cData == "25/12/2019"
		MsgAlert("Hoje � dia: " + cValToChar(cData) + " Hoje � natal de 2019")

	Case cData == "25/12/2020"
		MsgAlert("Hoje � dia: " + cValToChar(cData) + " Hoje � natal de 2020")

	Otherwise
		Alert("Hoje � dia: " + cValToChar(cData))

	EndCase
Return
