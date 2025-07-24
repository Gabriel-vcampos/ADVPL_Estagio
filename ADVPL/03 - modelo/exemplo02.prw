#INCLUDE 'protheus.ch'  // Inclus�o da biblioteca padr�o do Protheus

User function mbrowseteste() // Fun��o principal

    /* ??? CRUD via MBrowse
       Esta fun��o monta uma tela de navega��o (MBrowse) com a��es de CRUD:
       - Pesquisar
       - Visualizar
       - Incluir
       - Trocar (Alterar)
       - Excluir
       - A��o condicional customizada
    */

    Local cAlias := "SB1"           // Define o alias (tabela SB1 - Cadastro de Produtos)
    Private aRotina := {}           // Vetor com as rotinas (a��es dispon�veis na tela)
    Private cTitulo := "Cadastro de Produtos - MBrowse" // T�tulo da tela

    // ?? Adiciona as op��es do menu na tela de navega��o
    // Cada linha representa uma a��o com: [Nome da A��o, Fun��o Associada, N�vel, C�digo]
    AADD(aRotina, {"Pesquisar"      ,"AxPesqui",        0, 1}) // Pesquisa um produto
    AADD(aRotina, {"Visualizar"     ,"AxVisual",        0, 2}) // Visualiza os dados
    AADD(aRotina, {"Incluir"        ,"AxIncluir",       0, 3}) // Insere novo produto
    AADD(aRotina, {"Trocar"         ,"AxAltera",        0, 4}) // Altera produto
    AADD(aRotina, {"Excluir"        ,"AxDeleta",        0, 5}) // Deleta produto
    AADD(aRotina, {"Condicional"    ,"U_Condicional",   0, 6}) // Fun��o extra personalizada

    // ?? Seleciona a tabela SB1 e define a ordem de �ndice (ordem 1)
    DBSelectArea(cAlias)
    DBSetOrder(1)

    // ?? Exibe a tela de navega��o MBrowse com as op��es definidas acima
    MBrowse(,,,,cAlias, cTitulo)

Return
