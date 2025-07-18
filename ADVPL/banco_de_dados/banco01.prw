#INCLUDE 'protheus.ch'

User function Banco01()
    Local  aArea := ZZB990 ->(GetArea())
    Local cMsg := ""

    DBSelectArea("ZZB990")
    ZZB990 -> (DBSetOrder(1)) // Posiciona no �ndice 1
    ZZB990 -> (DBGoTop())

    //Posiciona o produto de c�digo 000002
    If ZZB990 -> (DBSeek(FWXFilial("ZZB990")+ "000002"))
    Alert(ZZB990->B1_DESC)
        
    EndIf

    RestArea(aArea)
    



Return
