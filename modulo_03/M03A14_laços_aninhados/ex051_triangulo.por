programa {
    inclua biblioteca Util --> u
	funcao inicio() {
		escreva("{ EXERC�CIO 051 - Tri�ngulos }\n\n")
		
		inteiro n_andares, n_pecas, pavimento
		
		escreva("Quantos andares o tri�ngulo ter�? ")
		leia(n_andares)
		
		escreva("\n")
		
		para ( pavimento = 1; pavimento <= n_andares; pavimento++) {
		    
		    para (n_pecas = 1; n_pecas <= (pavimento * 2); n_pecas++) {
    		    escreva("*")
    		    u.aguarde(500)
		    }
		    
		    escreva("\n")
		}
	}
}
