programa {
	funcao inicio() {
		escreva("{ EXERC�CIO 036 - Analisando N�meros }\n\n")
		
		//VARI�VEIS
		inteiro ntotal, c, n, maior, menor
		
		//LEGENDA DAS VARI�VEIS
		//ntotal = total de n�meros a serem sorteados
		//c = contagem
		//n = n�mero sorteado
		//maior = maior n�mero
		//menor = menor n�mero
		
		escreva("Quantos n�meros vou sortear? ")
		leia(ntotal)
		
		escreva("Sorteando ", ntotal, " n�meros... ")
		
		c = 1
		maior = 0
		menor = 0
		
		enquanto (c <= ntotal) {
		    
		    n = sorteia(1, 20)
		    escreva(n, ".. ")
		    
		    se (c == 1) {
		        
		        maior = n
		        menor = n
		        
		    } senao {
		        
		        se (n > maior) {
		            maior = n
		        }
		    
		        se (n < menor) {
		            menor = n
		        }
		    }
		    
		    c++
		    
		    u.aguarde(400)
		}
		
		escreva("\n-----------------------------------------\n")
		escreva("O MAIOR n�mero sorteado � o ", maior, "\n")
		escreva("O MENOR n�mero sorteado foi o ", menor, "\n")
	}
}










