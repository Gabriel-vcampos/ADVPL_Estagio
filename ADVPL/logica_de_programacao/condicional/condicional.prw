#INCLUDE 'protheus.ch'

user Function Condicional()

	Private nIdade := 18

	if (nIdade > 18)
		MsgAlert("Você tem a idade de: " + cValToChar(nIdade) + " anos! Você é maior de idade portanto poderá dirigir!")

	elseif (nIdade = 18)
		MsgAlert("Você tem a idade de: " + cValToChar(nIdade) + " anos! Você acabou de fazer 18 anos! Parabéns! Poderá dirigir!")

	else
		Alert("Você tem a idade de: " + cValToChar(nIdade) + " anos! Você é menor de idade portanto não poderá dirigir!")
	EndIf

Return
