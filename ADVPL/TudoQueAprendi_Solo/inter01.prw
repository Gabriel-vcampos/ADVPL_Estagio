/*?? N�vel 2 � Intermedi�rio
Exerc�cio 3: mBrowse com CRUD
Monte um cadastro usando MBrowse() com:

Alias da tabela SB1.

aRotina com bot�es: Pesquisar, Incluir, Visualizar, Alterar e Excluir.

Um bot�o extra que chame uma fun��o condicional criada por voc�.

?? Dica: Releia sua fun��o mbrowseteste() e adapte ao que quiser.*/

#INCLUDE 'protheus.ch'

User Function Inter01()

Local cAlias := "SA1"
Private aRotina := {}
Private cTitulo := "Cadastro de produtos - MBrowse"

AADD(aRotina,   {"Pesquisar"      ,"AxPesqui",   0, 1})
AADD(aRotina,   {"Visualizar"     ,"AxVisual",   0, 2})
AADD(aRotina,   {"Incluir"        ,"AxIncluir",   0, 3})
AADD(aRotina,   {"Trocar"        ,"AxAltera",   0, 4})
AADD(aRotina,   {"Deletar"        ,"AxDeleta",   0, 5})

DBSelectArea(cAlias)
DBSetOrder(1)

MBrowse(,,,,cAlias,cTitulo)


Return
