programa {
    inclua biblioteca Tipos --> t
	funcao inicio() {
	    
	    caracter opcao  //op��es do menu
	    inteiro n1, n2  //operandos
	    
	    escreva(
	        "{ EXERC�CIO 026 - Super Tabuada v1.0 }\n\n",
            "=====================================\n",
            "(Op��o 1) \t\t+ \t\tAdi��o\n",
            "(Op��o 2) \t\t- \t\tSubtra��o\n",
            "(Op��o 3) \t\t* \t\tMultiplica��o\n",
            "(Op��o 4) \t\t/ \t\tDivis�o\n",
            "=====================================\n",
            "Digite sua op��o: => "
        )
        
        leia(opcao)
        
        escreva("================================\n")
        escreva("Voc� escolheu a op��o " + opcao)
        
        escolha (opcao) {
            caso '1':
                opcao = '+'        
                pare
            caso '2':
                opcao = '-'
                pare
            caso '3':
                opcao = '*'
                pare
            caso '4':
                opcao = '/'
                pare
            caso contrario:
                opcao = '+'
                pare
        }
        
        escreva("\nDigite o primeiro n�mero: ")
        leia(n1)
        
        escreva("Digite o segundo n�mero: ")
        leia(n2)
        
        escreva("-------------------------------\n")
        escreva("Calculando o valor de " + n1 + opcao + n2 + "\n")
        escreva("======== PROCESSANDO ========\n")
    
        escolha (opcao) {
            caso '+':
                escreva("Resultado da ADI��O = " + (n1+n2))
                pare
            caso '-':
                escreva("Resultado da SUBTRA��O = " + (n1-n2))
                pare
            caso '*':
                escreva("Resultado da MULTIPLICA��O = " + (n1*n2))
                pare
            caso '/':
                escreva("Resultado da DIVIS�O = " + (t.inteiro_para_real(n1)/n2))
                pare
            caso contrario:
                escreva("ERRO! Escolha uma op��o entre 1 e 4")
                pare
        }
        
        escreva(
            "\n----------------------------------\n",
            "\t\tVOLTE SEMPRE\n"
        )
	}
}
