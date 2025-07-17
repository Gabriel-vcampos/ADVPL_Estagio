#INCLUDE 'Protheus.ch'

User Function DoCase()

	Local cData := "25/12/2015"

	Do Case

	Case cData == "25/12/2017"
		MsgAlert("Hoje é dia: " + cValToChar(cData) + " Hoje é natal de 2017")

	Case cData == "25/12/2018"
		MsgAlert("Hoje é dia: " + cValToChar(cData) + " Hoje é natal de 2018")

	Case cData == "25/12/2019"
		MsgAlert("Hoje é dia: " + cValToChar(cData) + " Hoje é natal de 2019")

	Case cData == "25/12/2020"
		MsgAlert("Hoje é dia: " + cValToChar(cData) + " Hoje é natal de 2020")

	Otherwise
		Alert("Hoje é dia: " + cValToChar(cData))

	EndCase
Return
