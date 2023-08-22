programa {
	funcao inicio() {
	    
		inteiro n, s = 0
		caracter  r = 'S'
		
		enquanto (r == 's' ou r == 'S') {
		    escreva("Digite um número: ")
		    leia(n)
		    
		    s += n
		    
		    escreva("Quer continuar? ")
		    leia(r)
		}
		
		escreva("A soma dps valores é ", s)
		
		escreva("\n====== PROGRAMA ENCERRADO ======")
	}
}
