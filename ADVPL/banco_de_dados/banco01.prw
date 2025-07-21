#INCLUDE 'protheus.ch'

User function Banco01()
    Local  aArea := ZZB ->(GetArea())
    Local cMsg := ""

    DBSelectArea("ZZB")
    ZZB -> (DBSetOrder(1)) // Posiciona no �ndice 1
    ZZB -> (DBGoTop())

    //Posiciona o produto de c�digo 000002
    If ZZB -> (DBSeek(FWXFilial("ZZB")+ "000002"))
    Alert(ZZB->ART_DESC)
        
    EndIf

    RestArea(aArea)
    
Return
