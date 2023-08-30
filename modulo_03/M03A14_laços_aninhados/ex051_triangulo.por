programa {
    inclua biblioteca Util --> u
	funcao inicio() {
		escreva("{ EXERCÍCIO 051 - Triângulos }\n\n")
		
		inteiro n_andares, n_pecas, pavimento
		
		escreva("Quantos andares o triângulo terá? ")
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
