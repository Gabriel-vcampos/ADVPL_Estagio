#INCLUDE 'protheus.ch'

user Function Condicional()

	Private nIdade := 18

	if (nIdade > 18)
		MsgAlert("Voc� tem a idade de: " + cValToChar(nIdade) + " anos! Voc� � maior de idade portanto poder� dirigir!")

	elseif (nIdade = 18)
		MsgAlert("Voc� tem a idade de: " + cValToChar(nIdade) + " anos! Voc� acabou de fazer 18 anos! Parab�ns! Poder� dirigir!")

	else
		Alert("Voc� tem a idade de: " + cValToChar(nIdade) + " anos! Voc� � menor de idade portanto n�o poder� dirigir!")
	EndIf

Return
