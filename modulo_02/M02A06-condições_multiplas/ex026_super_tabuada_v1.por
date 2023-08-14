programa {
    inclua biblioteca Tipos --> t
	funcao inicio() {
	    
	    inteiro num, n1, n2
	    
	    escreva(
	        "{ EXERCÍCIO 026 - Super Tabuada v1.0 }\n\n",
            "\t\t=====================================\n",
            "\t\t(Opção 1) \t\t+ \t\tAdição\n",
            "\t\t(Opção 2) \t\t- \t\tSubtração\n",
            "\t\t(Opção 3) \t\t* \t\tMultiplicação\n",
            "\t\t(Opção 4) \t\t/ \t\tDivisão\n",
            "\t\t=====================================\n",
            "\t\tDigite sua opção: => "
        )
        
        leia(num)
        
        escreva("\nDigite o primeiro número: ")
        leia(n1)
        
        escreva("Digite o segundo número: ")
        leia(n2)
        
        escreva("----------------------------------\n")
        
        escolha (num) {
            caso 1:
                escreva("Calculando o valor de " + n1 + " + " + n2 + "\n")
                escreva("Resultado da ADIÇÃO = " + (n1+n2))
                pare
            caso 2:
                escreva("Calculando o valor de " + n1 + " - " + n2 + "\n")
                escreva("Resultado da SUBTRAÇÃO = " + (n1-n2))
                pare
            caso 3:
                escreva("Calculando o valor de " + n1 + " * " + n2 + "\n")
                escreva("Resultado da MULTIPLICAÇÃO = " + (n1*n2))
                pare
            caso 4:
                escreva("Calculando o valor de " + n1 + " / " + n2 + "\n")
                escreva("Resultado da DIVISÃO = " + (t.inteiro_para_real(n1)/n2))
                pare
            caso contrario:
                escreva("ERRO! Escolha uma opção entre 1 e 4")
                pare
        }
        
        escreva(
            "\n----------------------------------\n",
            "\t\tVOLTE SEMPRE\n"
        )
	}
}
