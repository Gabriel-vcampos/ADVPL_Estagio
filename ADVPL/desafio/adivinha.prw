#INCLUDE 'protheus.ch'


/*Meu c�digo feito sem o aux�lio da videoaula*/

/*Adi��o que eu podia ter feito:
Usar a function randomize(1,100)*/

User function Adivinha()
MsgAlert("Bem-vindo ao jogo de adivinha��o!")
MsgAlert("Adivinhe o n�mero de 0 a 100")

nCount = 0
nNumeroAleatorio := 97
nNumeroUsuario := Val(FWInputBox("Digite um n�mero a seguir:",""))

    if(nNumeroUsuario != nNumeroAleatorio)
            nCount++
            MsgAlert("Voc� errou! Quantidade de erros at� agora: " + cValToChar(nCount))
                if(nNumeroUsuario > nNumeroAleatorio)
                    MsgAlert("O Seu n�mero � maior que o da m�quina!")
                    else
                    MsgAlert("O Seu n�mero � menor que o da m�quina!")
                    EndIf
                else
            MsgAlert("Voc� acertou! Com a quantidade de erros de: " + cValToChar(nCount))

            EndIf

while nNumeroUsuario != nNumeroAleatorio

nNumeroUsuario := Val(FWInputBox("Digite um n�mero a seguir:",""))
MsgAlert("Voc� escolheu o n�mero: " + cValToChar(nNumeroUsuario))

    if(nNumeroUsuario != nNumeroAleatorio)
            nCount++
            MsgAlert("Voc� errou! Quantidade de erros at� agora: " + cValToChar(nCount))
                if(nNumeroUsuario > nNumeroAleatorio)
                    MsgAlert("O Seu n�mero � maior que o da m�quina!")
                    else
                    MsgAlert("O Seu n�mero � menor que o da m�quina!")
                    EndIf
                else
            MsgAlert("Voc� acertou! Com a quantidade de erros de: " + cValToChar(nCount))

            EndIf

EndDo

Return
