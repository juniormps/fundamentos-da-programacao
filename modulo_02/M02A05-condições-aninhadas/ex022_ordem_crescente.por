programa {
	funcao inicio() {
	    escreva("{ EXERC�CIO 022 - Ordem Crescente }\n\n")
	    
	    real n1, n2
	    
	    escreva("Digite um n�mero: ")
	    leia(n1)
	    
	    escreva("Digite outro n�mero ")
	    leia(n2)
	    
	    se (n1 > n2) {
	        escreva("\nOs n�meros em ordem s�o " + n2 + " e " + n1 + "\n")
	    } senao se (n1 < n2) {
	        escreva("\nOs n�meros em ordem s�o " + n1 + " e " + n2 + "\n")
	    } senao {
	        escreva("N�o tem como colocar estes valores em ordem, pois eles s�o IGUAIS.\n")
	    }
	}
}
