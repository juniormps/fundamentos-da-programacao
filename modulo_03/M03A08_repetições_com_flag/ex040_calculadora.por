programa {
    inclua biblioteca Util --> u
    inclua biblioteca Tipos --> t
    inclua biblioteca Matematica --> mat
	funcao inicio() {
		escreva("{ EXERC�CIO 040 - Calculadora }\n\n")
		
		//VARI�VEIS
		inteiro n1, n2  //n�meros operandos 1 e 2
		inteiro opcao  //op��es do menu
		
		opcao = 0
		
    	escreva("Operando 1: ")
		leia(n1)
		
		escreva("Operando 2: ")
		leia(n2)
		
		enquanto (opcao != 6) {
		    
		    escreva(
            "\n======== ESCOLHA UMA OPERA��O ========\n",
            "[1] \t\tAdi��o\n",
            "[2] \t\tSubtra��o\n",
            "[3] \t\tMultiplica��o\n",
            "[4] \t\tDivis�o\n",
            "[5] \t\tEntrar com novos dados\n",
            "[6] \t\tSair\n",
            "=====================================\n",
            ">>>>>> Sua op��o: "
            )
            
            leia(opcao)
            
            escreva("-------------------------------------\n")
            
            escolha (opcao) {
                caso 1:
                    escreva(
                        "Calculando... " + n1 + " + " + n2 + " = " + (n1+n2),
                        "\n-------------------------------------\n"
                    )
                    u.aguarde(2000)
                    pare
                caso 2:
                    escreva(
                        "Calculando... " + n1 + " - " + n2 + " = " + (n1-n2),
                        "\n-------------------------------------\n"
                    )
                    u.aguarde(2000)
                    pare
                caso 3:
                    escreva(
                        "Calculando... " + n1 + " x " + n2 + " = " + (n1*n2),
                        "\n-------------------------------------\n"
                    )
                    u.aguarde(2000)
                    pare
                caso 4:
                    escreva(
                        "Calculando... " + n1 + " / " + n2 + " = " + (t.inteiro_para_real(n1)/n2),
                        "\n-------------------------------------\n"
                    )
                    u.aguarde(2000)
                    pare
                caso 5:
                    escreva("\n\nOperando 1: ")
		            leia(n1)
		
            		escreva("Operando 2: ")
            		leia(n2)
            		pare
                caso 6:
                    escreva(
                        "\n=========== SAINDO ===========\n",
                        "======== VOLTE SEMPRE ========\n"
                    )
                    pare
                caso contrario:
                    escreva("\nOP��O INV�LIDA! Escolha uma op��o entre 1 e 6\n")
                    u.aguarde(2000)
                    pare
		    }
        }
	}
}



















