programa {
	funcao inicio() {
	    escreva("{ EXERCÍCIO 021 - Positivo ou Negativo }\n\n")
	    
	    inteiro n
	    
	    escreva("Digite um número para saber se ele é positivo ou negativo: ")
	    leia(n)
	    
		se (n > 0) {
		    escreva("\nVocê digitou um número POSITIVO\n")
		} senao se (n < 0) {
		    escreva("\nVocê digitou um número NEGATIVO\n")
		} senao {
		    escreva("\nVocê digitou um número NULO\n")
		}
	}
}
