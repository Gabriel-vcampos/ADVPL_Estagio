#INCLUDE "protheus.ch"

User Function Banco01()
    Local aArea := {}
    Local cMsg := ""

    If !FWIsInit()
        FWInit()
    EndIf

    If !Used("SB1")
        DbUseArea(.T., "TOPCONN", "SB1010", "SB1", .F., .F.)
    EndIf

    aArea := SB1->(GetArea())

    DbSelectArea("SB1")
    SB1->(DbSetOrder(1))
    SB1->(DbGoTop())

    If SB1->(DbSeek(FWXFilial("SB1") + "000002"))
        Alert(SB1->B1_DESC)
    EndIf

    RestArea(aArea)
Return
