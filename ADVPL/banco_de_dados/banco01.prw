#Include 'Protheus.ch'
 
User Function BANCO01()
Local aArea := SA1->(GetArea())           
Local cCod := "03"    //c�digo do produto descrito no B1_COD, da SA1
 
DbSelectArea("SA1")
SA1->(DbSetOrder(1))
 
 
if SA1->(DbSeek(xFilial("SA1")+cCod)) 
 
/*DbSeek retorna valor l�gico, ent�o pode ser usado como condi��o. Neste caso passando a Filial de SA1+ o c�digo que se deseja encontrar, pela vari�vel cCod*/             
    
Alert(SA1->A1_NOME)                     
 
endif
 
RestArea(aArea)
 
return
