programa {
    inclua biblioteca Tipos --> t
	funcao inicio() {
	    
	    caracter opcao  //opções do menu
	    inteiro n1, n2  //operandos
	    
	    escreva(
	        "{ EXERCÍCIO 026 - Super Tabuada v1.0 }\n\n",
            "=====================================\n",
            "(Opção 1) \t\t+ \t\tAdição\n",
            "(Opção 2) \t\t- \t\tSubtração\n",
            "(Opção 3) \t\t* \t\tMultiplicação\n",
            "(Opção 4) \t\t/ \t\tDivisão\n",
            "=====================================\n",
            "Digite sua opção: => "
        )
        
        leia(opcao)
        
        escreva("================================\n")
        escreva("Você escolheu a opção " + opcao)
        
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
        
        escreva("\nDigite o primeiro número: ")
        leia(n1)
        
        escreva("Digite o segundo número: ")
        leia(n2)
        
        escreva("-------------------------------\n")
        escreva("Calculando o valor de " + n1 + opcao + n2 + "\n")
        escreva("======== PROCESSANDO ========\n")
    
        escolha (opcao) {
            caso '+':
                escreva("Resultado da ADIÇÃO = " + (n1+n2))
                pare
            caso '-':
                escreva("Resultado da SUBTRAÇÃO = " + (n1-n2))
                pare
            caso '*':
                escreva("Resultado da MULTIPLICAÇÃO = " + (n1*n2))
                pare
            caso '/':
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
