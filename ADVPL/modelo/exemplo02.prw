#INCLUDE 'protheus.ch'

User function mbrowseteste()

Local cAlias := "SB1"
Private aRotina := {}
Private cTitulo := "Cadastro de Produtos - MBrowse"

AADD(aRotina, {"Pesquisar"      ,"AxPesqui",    0,1})
AADD(aRotina, {"Visualizar"     ,"AxVisual",    0,2})
AADD(aRotina, {"Incluir"        ,"AxIncluir",    0,3})
AADD(aRotina, {"Trocar"         ,"AxAltera",    0,4})
AADD(aRotina, {"Excluir"        ,"AxDeleta",    0,5})
AADD(aRotina, {"Condicional"    ,"U_Condicional",    0,6})

DBSelectArea(cAlias)
DBSetOrder(1)
MBrowse(,,,,cAlias)


Return
