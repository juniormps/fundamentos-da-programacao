programa {
    inclua biblioteca Tipos --> t
	funcao inicio() {
		inteiro num = 0, soma = 0, cont = 0
		caracter resp
		cadeia teclado
		
		faca {
		    
		    cont++
		    
		    enquanto (verdadeiro) {
        		escreva("Digite o ", cont, "º número: ")
        		leia(teclado)
        		
        		se (t.cadeia_e_inteiro(teclado, 10)){
        		    num = t.cadeia_para_inteiro(teclado, 10)
        		    
        		    se (num >= 0 e num <= 10) {
        		        pare
        		    } senao {
        		        escreva("<<ERRO>> O número deve estar entre 1 e 10.\n")
        		    }
        		    
        		} senao {
        		    escreva("<<ERRO>> O valor deve ser um número inteiro.\n")
        		}
		    }
    		
    		soma += num
    		
    		enquanto (verdadeiro) {
        		escreva("Quer continuar? [S/N] ")
        		leia(teclado)
        		
        		se (t.cadeia_e_caracter(teclado)) {
        		    
        		    resp = t.cadeia_para_caracter(teclado)
        		    
        		    se (resp == 'S' ou resp == 's' ou resp == 'N' ou resp == 'n') {
        		        pare
        		    } senao {
        		        escreva("<<ERRO>> Por favor, responda S ou N.\n")
        		    }
        		} senao {
        		    escreva("<<ERRO>> O valor deve ser uma letra.\n")
        		}
    		}
		
		} enquanto (resp == 's' ou resp == 'S')
		
		escreva(
		    "============ RESULTADO ============\n",
		    "Você digitou ", cont, " valores.\n",
		    "A soma entre eles é ", soma, "\n"
	    )
	}
}
