programa {
	funcao inicio() {
	    escreva("{ EXERC�CIO 021 - Positivo ou Negativo }\n\n")
	    
	    inteiro n
	    
	    escreva("Digite um n�mero para saber se ele � positivo ou negativo: ")
	    leia(n)
	    
		se (n > 0) {
		    escreva("\nVoc� digitou um n�mero POSITIVO\n")
		} senao se (n < 0) {
		    escreva("\nVoc� digitou um n�mero NEGATIVO\n")
		} senao {
		    escreva("\nVoc� digitou um n�mero NULO\n")
		}
	}
}
