programa {
	funcao inicio() {
		escreva("{ EXERCÍCIO 043 - Analisador de Números }\n\n")
		
		//VARIÁVEIS
		inteiro n, c, tot, totp, toti, imenor
		caracter resp
	
		tot = 0  //total de números digitados = que é tbm igual a contagem
		totp = 0  //total de números PARES
		toti = 0  //total de números ÍMPARES
		imenor = 0  //menor número ÍMPAR
		
		faca{
		    
		    tot++
		    
		    escreva("Digite o ", tot, "º valor: ")
    		leia(n)
    		
    		se (n % 2 == 0) {
    		    
    		    totp++
    		    
    		} senao {
    		    
    		    toti++
    		    
    		    se (toti == 1) {
    		        
    		        imenor = n
    		        
    		    } senao {
    		        
    		        se (n < imenor) {
    		            
    		            imenor = n
    		            
    		        }
    		    }
    		}
    		
    		escreva("Quer continuar? [S/N] ")
    		leia(resp)
    		
		} enquanto (resp == 'S' ou resp == 's')
		
		//RESULTADOS
		escreva(
		    "\n==================================================",
		    "\nAo todo, você digitou ", tot, " valores.",
		    "\nVocê digitou ", totp, " valores PARES.",
		    "\nO valor ", imenor, " foi o menor número ÍMPAR digitado.\n"
	    )
	}
}
