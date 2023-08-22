programa {
    inclua biblioteca Tipos --> t
    inclua biblioteca Matematica --> mat
	funcao inicio() {
		escreva("{ EXERCÍCIO 039 - Lendo Dados }\n\n")
		
		//VARIÁVEIS
		inteiro n = 0  //número digitado
		inteiro s = 0  //soma dos números digitados
		inteiro totn = 0  //total de números digitados
		inteiro maior = -99999999  //maior número
		real m = 0  //média dos números digitados
		
		enquanto (n != 9999) {
		   
		    escreva("--------------\n")
		    escreva((totn + 1), "° VALOR [9999 FAZ PARAR]\n")
		    escreva("--------------\n")
		    escreva("NÚMERO: ")
		    leia(n)
		    escreva("\n")
		    
		    se (n != 9999) {
		        
		        totn = totn + 1
		        
    		    s = s + n
    		    
    		    m = mat.arredondar((t.inteiro_para_real(s) / totn), 2)
    		    
    		    se (n > maior) {
    		        maior = n
    		    } 
    		    
		    } senao {
		        
		        escreva("========== FLAG DIGITADO ==========\n")
		        
		    }
		}
		
		escreva("Ao todo, você digitou ", totn, " valores.\n")
		escreva("A soma entre eles foi ", s, "\n")
		escreva("A média foi ", m, "\n")
		escreva("O maior valor digitado foi ", maior, "\n")
		
		
	}
}
