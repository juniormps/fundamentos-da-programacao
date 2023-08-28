programa {
    inclua biblioteca Util --> u
	funcao inicio() {
		escreva("{ EXERCÍCIO 047 - Contagem Personalizada }\n\n")
		
		//VARIÁVEIS
		inteiro ni, nf, p, c
		
		escreva("INÍCIO = ")
		leia(ni)
		
		escreva("FINAL = ")
		leia(nf)
		
		escreva("PASSO = ")
		leia(p)
		
		escreva("\n")
		
		se (ni < nf) {
		    
		    se (p > 0) {
    		    para (c = ni; c <= nf; c += p) {
    		        escreva(c, "... ")
    		        u.aguarde(500)
    		    }
		    } senao {
		        escreva(ni)
		    }
		}
		
		se (ni > nf) {
		    
		    se (p < 0) {
    		    para (c = ni; c >= nf; c += p) {
    		        escreva(c, "... ")
    		        u.aguarde(500)
    		    }
		    } 
		    
		    se (p > 0) {
		        para (c = ni; c >= nf; c -= p) {
    		        escreva(c, "... ")
    		        u.aguarde(500)
		        }
		    }
		     se (p == 0) {
		         escreva(ni)
		     }
		    
		}
		
		se (ni == nf) {
		    escreva(ni)
		}
		
		escreva("Acabou!\n")
	}
}







