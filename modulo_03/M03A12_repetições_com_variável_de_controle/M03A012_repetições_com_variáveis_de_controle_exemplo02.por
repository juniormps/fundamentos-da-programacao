programa {
    inclua biblioteca Util --> u
	funcao inicio() {
	    
		inteiro c

		para (c = 10; c >= 0; c -= 2) {
		    
		    escreva(c, " ")
		    
		    u.aguarde(400)
		   
		}
	}
}
