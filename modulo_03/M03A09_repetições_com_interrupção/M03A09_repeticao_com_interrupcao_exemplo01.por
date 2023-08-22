programa {
	funcao inicio() {
	    
		inteiro n
		caracter r
		
		enquanto (verdadeiro) {
		    
		    escreva("Valor: ")
		    leia(n)
		    
		    escreva("Quer continuar? ")
		    leia(r)
		    
		    se (r == 'N' ou r == 'n') {
		        pare    //comando PARE
		    }
		}
		
		escreva("Usuário mandou parar...")
	}
}
