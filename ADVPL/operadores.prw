#INCLUDE 'protheus.ch'

User Function Operadores()

	Private nNumero1 := 10
	Private nNumero2 :=  5

    /*Operadores aritm�ticos*/
	Private soma := nNumero1 + nNumero2
	Private subtracao := nNumero1 - nNumero2
	Private multiplicacao := nNumero1 * nNumero2
	Private divisao := nNumero1 / nNumero2
	Private potencia := nNumero1 ** nNumero2
	Private resto := nNumero1 % nNumero2

    /*Operadores relacionais
        MsgAlert(nNum1 < nNum2) COMPARA��O MENOR
        MsgAlert(nNum1 > nNum2) COMPARA��O MAIOR
        MsgAlert(nNum1 = nNum2) IGUAL A
        MsgAlert(nNum1 == nNum2) IGUAL A STRING
        MsgAlert(nNum1 <= nNum2) MENOR QUE
        MsgAlert(nNum1 >= nNum2) MAIOR QUE
        MsgAlert(nNum1 != nNum2) DIFERENTE
    */

	MsgAlert("O Valor da soma entre: "+ cValToChar(nNumero1) + " e " + cValToChar(nNumero2) + " � igual a: " + cValToChar(soma))
	MsgAlert("O Valor da subtra��o entre: "+ cValToChar(nNumero1) + " e " + cValToChar(nNumero2) + " � igual a: " + cValToChar(subtracao))
	MsgAlert("O Valor da multiplica��o entre: "+ cValToChar(nNumero1) + " e " + cValToChar(nNumero2) + " � igual a: " + cValToChar(multiplicacao))
	MsgAlert("O Valor da divis�o entre: "+ cValToChar(nNumero1) + " pelo n�mero " + cValToChar(nNumero2) + " � igual a: " + cValToChar(divisao))
	MsgAlert("O Valor da potencia��o entre: "+ cValToChar(nNumero1) + " elevado a " + cValToChar(nNumero2) + " � igual a: " + cValToChar(potencia))
	MsgAlert("O resto da divis�o entre: "+ cValToChar(nNumero1) + " e " + cValToChar(nNumero2) + " � igual a: " + cValToChar(resto))


Return
