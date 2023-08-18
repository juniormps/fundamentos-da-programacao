programa {
	funcao inicio() {
		escreva("{ EXERCÍCIO 036 - Analisando Números }\n\n")
		
		//VARIÁVEIS
		inteiro ntotal, c, n, maior, menor
		
		//LEGENDA DAS VARIÁVEIS
		//ntotal = total de números a serem sorteados
		//c = contagem
		//n = número sorteado
		//maior = maior número
		//menor = menor número
		
		escreva("Quantos números vou sortear? ")
		leia(ntotal)
		
		escreva("Sorteando ", ntotal, " números... ")
		
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
		escreva("O MAIOR número sorteado é o ", maior, "\n")
		escreva("O MENOR número sorteado foi o ", menor, "\n")
	}
}










