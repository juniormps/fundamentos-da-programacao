programa {
    inclua biblioteca Util --> u
	funcao inicio() {
		escreva("{ EXERC�CIO 031 - Contagem Regressiva }\n\n")
		
    	inteiro n, ni, mult  // n�mero / n�mero inicial / m�ltiplo
		
		escreva("Sua contagem regressiva vai come�ar em: ")
		leia(ni)
		
		escreva("Marcar os m�ltiplos  de: ")
		leia(mult)
		
		escreva("\n")
		
		n = ni  //n�mero inicial
		
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
