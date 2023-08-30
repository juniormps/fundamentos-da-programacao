programa {
    inclua biblioteca Util --> u
	funcao inicio() {
		escreva("{ EXERCÍCIO 052 - Pirâmide Invertida }\n\n")
		
		inteiro n_andares, tot_pecas, pavimento, tot_espaco, linha = 0
		
		escreva("Quantos andares a pirâmide terá? ")
		leia(n_andares)
		
		escreva("\n")
		
		para (pavimento = n_andares; pavimento >= 1; pavimento--) {
		    
		    linha++
		    
		    para (tot_pecas = (pavimento * 2); tot_pecas >= 1; tot_pecas--) {
    		    escreva("*")
    		    u.aguarde(500)
		    }
		    
		    escreva("\n")
		    
		    para (tot_espaco = 0; tot_espaco < linha; tot_espaco++) {
		        escreva(" ")
		    }
		}
	}
}
