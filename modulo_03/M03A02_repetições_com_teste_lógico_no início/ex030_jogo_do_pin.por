programa {
    inclua biblioteca Util --> u
	funcao inicio() {
		escreva("{ EXERC�CIO 030 - Jogo do PIN }\n\n")
		
    	inteiro n, nf  // n�mero / n�mero final 
		
		escreva("Quer contar at� quanto? ")
		leia(nf)
		
		escreva("\n")
		
		n = 1  //n�mero inicial
		
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
