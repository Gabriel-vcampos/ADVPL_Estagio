#Include 'Protheus.ch'
 
User Function BANCO01()
Local aArea := SA1->(GetArea())           
Local cCod := "03"    //código do produto descrito no B1_COD, da SA1
 
DbSelectArea("SA1")
SA1->(DbSetOrder(1))
 
 
if SA1->(DbSeek(xFilial("SA1")+cCod)) 
 
/*DbSeek retorna valor lógico, então pode ser usado como condição. Neste caso passando a Filial de SA1+ o código que se deseja encontrar, pela variável cCod*/             
    
Alert(SA1->A1_NOME)                     
 
endif
 
RestArea(aArea)
 
return
