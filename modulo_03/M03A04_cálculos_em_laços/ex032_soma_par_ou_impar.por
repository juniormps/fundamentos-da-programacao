programa {
	funcao inicio() {
		escreva("{ EXERC�CIO 032 - Soma Par e �mpar }\n\n")
		
		inteiro n, c, sp, si  //n� digitado / contagem / soma dos pares / soma dos �mpares;
		
		c = 1
		sp = 0
		si = 0
		
		enquanto (c <= 5) {
		    
		    escreva("Digite o " + c + "� valor: ")
		    leia(n)
		    
		    se (n % 2 == 0) {
		        sp = sp + n
		    } senao {
		        si = si + n
		    }
		    
		    c = c + 1
		}
		
		escreva("-----------------------------------------------\n")
		escreva("Somando todos os n�meros pares, temos: ", sp, "\n")
		escreva("Somando todos os n�meros �mpares, temos: ", si, "\n")
		
	}
}
