#INCLUDE 'protheus.ch'  // Inclusão da biblioteca padrão do Protheus

User function mbrowseteste() // Função principal

    /* ??? CRUD via MBrowse
       Esta função monta uma tela de navegação (MBrowse) com ações de CRUD:
       - Pesquisar
       - Visualizar
       - Incluir
       - Trocar (Alterar)
       - Excluir
       - Ação condicional customizada
    */

    Local cAlias := "SB1"           // Define o alias (tabela SB1 - Cadastro de Produtos)
    Private aRotina := {}           // Vetor com as rotinas (ações disponíveis na tela)
    Private cTitulo := "Cadastro de Produtos - MBrowse" // Título da tela

    // ?? Adiciona as opções do menu na tela de navegação
    // Cada linha representa uma ação com: [Nome da Ação, Função Associada, Nível, Código]
    AADD(aRotina, {"Pesquisar"      ,"AxPesqui",        0, 1}) // Pesquisa um produto
    AADD(aRotina, {"Visualizar"     ,"AxVisual",        0, 2}) // Visualiza os dados
    AADD(aRotina, {"Incluir"        ,"AxIncluir",       0, 3}) // Insere novo produto
    AADD(aRotina, {"Trocar"         ,"AxAltera",        0, 4}) // Altera produto
    AADD(aRotina, {"Excluir"        ,"AxDeleta",        0, 5}) // Deleta produto
    AADD(aRotina, {"Condicional"    ,"U_Condicional",   0, 6}) // Função extra personalizada

    // ?? Seleciona a tabela SB1 e define a ordem de índice (ordem 1)
    DBSelectArea(cAlias)
    DBSetOrder(1)

    // ?? Exibe a tela de navegação MBrowse com as opções definidas acima
    MBrowse(,,,,cAlias, cTitulo)

Return
