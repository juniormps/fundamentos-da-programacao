programa {
    inclua biblioteca Util --> u
	funcao inicio() {
		escreva("{ EXERCÍCIO 030 - Jogo do PIN }\n\n")
		
    	inteiro n, nf  // número / número final 
		
		escreva("Quer contar até quanto? ")
		leia(nf)
		
		escreva("\n")
		
		n = 1  //número inicial
		
		enquanto (n <= nf ) {
		    u.aguarde(500)
		    
		    se (n % 4 == 0) {
		        escreva(" PIN!\n")
		    } senao {
		        escreva(n)
		        u.aguarde(500)
		        escreva(" - ")
		    }
		    
		    n = n + 1
		}
		
		escreva("FIM!\n")
	}
}
