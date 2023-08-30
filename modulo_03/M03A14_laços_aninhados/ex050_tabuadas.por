programa {
    inclua biblioteca Util --> u
	funcao inicio() {
		escreva("{ EXERCÍCIO 050 - Tabuadas }\n\n")
		
		inteiro n1, n2, c2 = 1, c1
		
		escreva("Tabuada INICIAL = ")
		leia(n1)
		
		escreva("Tabuada FINAL = ")
		leia(n2)
		
		se (n2 >= n1) {
    		para (c1 = n1; c1 <= n2; c1++) {
    		    escreva(
    	            "------------------------\n",
    	            "\tTABUADA DE ", c1, "\n",
    	            "------------------------\n"
    	        )
    	        
    	        para (c2 = 1; c2 <= 10; c2++) {
    	            escreva(c1, " x ", c2, " = ", (c1*c2), "\n")
    	            u.aguarde(500)
    	        }
    	        
    	        escreva("\n")
    	        u.aguarde(800)
    		}
		} senao {
		    para (c1 = n1; c1 >= n2; c1--) {
    		    escreva(
    	            "------------------------\n",
    	            "\tTABUADA DE ", c1, "\n",
    	            "------------------------\n"
    	        )
    	        
    	        para (c2 = 1; c2 <= 10; c2++) {
    	            escreva(c1, " x ", c2, " = ", (c1*c2), "\n")
    	            u.aguarde(500)
    	        }
    	        
    	        escreva("\n")
    	        u.aguarde(800)
    		}
		}
	}
}
