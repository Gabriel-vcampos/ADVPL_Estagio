#INCLUDE 'protheus.ch'

User function While()

Local nNum := 10
Local nCount := 1

while nNum >= 0
MsgAlert(cValToChar(nNum))
nNum -= nCount

EndDo

Return
