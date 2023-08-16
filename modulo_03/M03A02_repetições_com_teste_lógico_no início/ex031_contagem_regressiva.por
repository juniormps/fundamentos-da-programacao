programa {
    inclua biblioteca Util --> u
	funcao inicio() {
		escreva("{ EXERCÍCIO 031 - Contagem Regressiva }\n\n")
		
    	inteiro n, ni, mult  // número / número inicial / múltiplo
		
		escreva("Sua contagem regressiva vai começar em: ")
		leia(ni)
		
		escreva("Marcar os múltiplos  de: ")
		leia(mult)
		
		escreva("\n")
		
		n = ni  //número inicial
		
		enquanto (n >= 0 ) {
		    
		    u.aguarde(500)
		    
		    se (n % mult == 0) {
		        escreva("[" + n + "]")
		    } senao {
		        escreva(n)
		    }
		    
		    u.aguarde(500)
		    
		    escreva(" - ")
		   
		    n = n - 1
		}
		
		escreva("FIM!\n")
	}
}
