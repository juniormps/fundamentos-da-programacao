programa {
    inclua biblioteca Tipos --> t
	funcao inicio() {
	    
	    inteiro num, n1, n2
	    
	    escreva(
	        "{ EXERC�CIO 026 - Super Tabuada v1.0 }\n\n",
            "\t\t=====================================\n",
            "\t\t(Op��o 1) \t\t+ \t\tAdi��o\n",
            "\t\t(Op��o 2) \t\t- \t\tSubtra��o\n",
            "\t\t(Op��o 3) \t\t* \t\tMultiplica��o\n",
            "\t\t(Op��o 4) \t\t/ \t\tDivis�o\n",
            "\t\t=====================================\n",
            "\t\tDigite sua op��o: => "
        )
        
        leia(num)
        
        escreva("\nDigite o primeiro n�mero: ")
        leia(n1)
        
        escreva("Digite o segundo n�mero: ")
        leia(n2)
        
        escreva("----------------------------------\n")
        
        escolha (num) {
            caso 1:
                escreva("Calculando o valor de " + n1 + " + " + n2 + "\n")
                escreva("Resultado da ADI��O = " + (n1+n2))
                pare
            caso 2:
                escreva("Calculando o valor de " + n1 + " - " + n2 + "\n")
                escreva("Resultado da SUBTRA��O = " + (n1-n2))
                pare
            caso 3:
                escreva("Calculando o valor de " + n1 + " * " + n2 + "\n")
                escreva("Resultado da MULTIPLICA��O = " + (n1*n2))
                pare
            caso 4:
                escreva("Calculando o valor de " + n1 + " / " + n2 + "\n")
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
