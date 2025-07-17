#INCLUDE 'protheus.ch'


/*Meu código feito sem o auxílio da videoaula*/

/*Adição que eu podia ter feito:
Usar a function randomize(1,100)*/

User function Adivinha()
MsgAlert("Bem-vindo ao jogo de adivinhação!")
MsgAlert("Adivinhe o número de 0 a 100")

nCount = 0
nNumeroAleatorio := 97
nNumeroUsuario := Val(FWInputBox("Digite um número a seguir:",""))

    if(nNumeroUsuario != nNumeroAleatorio)
            nCount++
            MsgAlert("Você errou! Quantidade de erros até agora: " + cValToChar(nCount))
                if(nNumeroUsuario > nNumeroAleatorio)
                    MsgAlert("O Seu número é maior que o da máquina!")
                    else
                    MsgAlert("O Seu número é menor que o da máquina!")
                    EndIf
                else
            MsgAlert("Você acertou! Com a quantidade de erros de: " + cValToChar(nCount))

            EndIf

while nNumeroUsuario != nNumeroAleatorio

nNumeroUsuario := Val(FWInputBox("Digite um número a seguir:",""))
MsgAlert("Você escolheu o número: " + cValToChar(nNumeroUsuario))

    if(nNumeroUsuario != nNumeroAleatorio)
            nCount++
            MsgAlert("Você errou! Quantidade de erros até agora: " + cValToChar(nCount))
                if(nNumeroUsuario > nNumeroAleatorio)
                    MsgAlert("O Seu número é maior que o da máquina!")
                    else
                    MsgAlert("O Seu número é menor que o da máquina!")
                    EndIf
                else
            MsgAlert("Você acertou! Com a quantidade de erros de: " + cValToChar(nCount))

            EndIf

EndDo

Return
