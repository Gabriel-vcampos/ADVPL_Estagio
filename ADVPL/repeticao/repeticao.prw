#INCLUDE 'protheus.ch'

User function Repeticao()


    Local nNumero := 5
    local nCount := 0
    MsgAlert("Bem-vindo a Calculadora!")

for nCount = 0 to 10 step 0
    Private nResultado := nNumero * nCount
    MsgAlert("O numero: " + cValToChar(nNumero) + " x " + cValToChar(nCount) + " É igual a: " + cValToChar(nResultado))
    nCount++
    Next



Return
