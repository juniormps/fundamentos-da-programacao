programa {
    inclua biblioteca Tipos --> t
    inclua biblioteca Matematica --> mat
	funcao inicio() {
		escreva("{ EXERC�CIO 039 - Lendo Dados }\n\n")
		
		//VARI�VEIS
		inteiro n = 0  //n�mero digitado
		inteiro s = 0  //soma dos n�meros digitados
		inteiro totn = 0  //total de n�meros digitados
		inteiro maior = -99999999  //maior n�mero
		real m = 0  //m�dia dos n�meros digitados
		
		enquanto (n != 9999) {
		   
		    escreva("--------------\n")
		    escreva((totn + 1), "� VALOR [9999 FAZ PARAR]\n")
		    escreva("--------------\n")
		    escreva("N�MERO: ")
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
		
		escreva("Ao todo, voc� digitou ", totn, " valores.\n")
		escreva("A soma entre eles foi ", s, "\n")
		escreva("A m�dia foi ", m, "\n")
		escreva("O maior valor digitado foi ", maior, "\n")
		
		
	}
}
