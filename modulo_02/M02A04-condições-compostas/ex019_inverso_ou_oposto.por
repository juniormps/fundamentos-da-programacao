programa {
	funcao inicio() {
		escreva("{ EXERCÍCIO 019 - Inverso ou Oposto }\n\n")
	    
	    //INFORMAÇÕES:
	    //Caso seja digitado um número POSITIVO. Deverá ser mostrado o INVERSO dele.
	    //Caso seja digitado um número NEGATIVO. Deverá ser mostrado o OPOSTO (MÓDULO) dele.
	    
	    real n  //Esta variável informará o número a ser transformado.
	    
	    escreva("Digite um número: ")
	    leia(n)
	    
	    se (n > 0) {
	        escreva("\nO INVERSO de " + n + " é igual a " + (1/n) + "\n")
	    } senao {
	        escreva("\nO OPOSTO de " + n + " é igual a " + (-n) + "\n")
	    }
	}
}
