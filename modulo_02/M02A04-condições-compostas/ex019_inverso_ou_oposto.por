programa {
	funcao inicio() {
		escreva("{ EXERC�CIO 019 - Inverso ou Oposto }\n\n")
	    
	    //INFORMA��ES:
	    //Caso seja digitado um n�mero POSITIVO. Dever� ser mostrado o INVERSO dele.
	    //Caso seja digitado um n�mero NEGATIVO. Dever� ser mostrado o OPOSTO (M�DULO) dele.
	    
	    real n  //Esta vari�vel informar� o n�mero a ser transformado.
	    
	    escreva("Digite um n�mero: ")
	    leia(n)
	    
	    se (n > 0) {
	        escreva("\nO INVERSO de " + n + " � igual a " + (1/n) + "\n")
	    } senao {
	        escreva("\nO OPOSTO de " + n + " � igual a " + (-n) + "\n")
	    }
	}
}
