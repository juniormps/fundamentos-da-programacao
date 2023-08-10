programa {
	funcao inicio() {
	    escreva("{ EXERCÍCIO 022 - Ordem Crescente }\n\n")
	    
	    real n1, n2
	    
	    escreva("Digite um número: ")
	    leia(n1)
	    
	    escreva("Digite outro número ")
	    leia(n2)
	    
	    se (n1 > n2) {
	        escreva("\nOs números em ordem são " + n2 + " e " + n1 + "\n")
	    } senao se (n1 < n2) {
	        escreva("\nOs números em ordem são " + n1 + " e " + n2 + "\n")
	    } senao {
	        escreva("Não tem como colocar estes valores em ordem, pois eles são IGUAIS.\n")
	    }
	}
}
