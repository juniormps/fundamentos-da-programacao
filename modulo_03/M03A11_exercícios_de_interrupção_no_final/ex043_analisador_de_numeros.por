programa {
	funcao inicio() {
		escreva("{ EXERC�CIO 043 - Analisador de N�meros }\n\n")
		
		//VARI�VEIS
		inteiro n, c, tot, totp, toti, imenor
		caracter resp
	
		tot = 0  //total de n�meros digitados = que � tbm igual a contagem
		totp = 0  //total de n�meros PARES
		toti = 0  //total de n�meros �MPARES
		imenor = 0  //menor n�mero �MPAR
		
		faca{
		    
		    tot++
		    
		    escreva("Digite o ", tot, "� valor: ")
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
		    "\nAo todo, voc� digitou ", tot, " valores.",
		    "\nVoc� digitou ", totp, " valores PARES.",
		    "\nO valor ", imenor, " foi o menor n�mero �MPAR digitado.\n"
	    )
	}
}
