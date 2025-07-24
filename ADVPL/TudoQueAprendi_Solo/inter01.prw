/*?? Nível 2 – Intermediário
Exercício 3: mBrowse com CRUD
Monte um cadastro usando MBrowse() com:

Alias da tabela SB1.

aRotina com botões: Pesquisar, Incluir, Visualizar, Alterar e Excluir.

Um botão extra que chame uma função condicional criada por você.

?? Dica: Releia sua função mbrowseteste() e adapte ao que quiser.*/

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
