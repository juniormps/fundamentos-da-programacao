programa {
	funcao inicio() {
		escreva("{ EXERCÍCIO 032 - Soma Par e Ímpar }\n\n")
		
		inteiro n, c, sp, si  //nº digitado / contagem / soma dos pares / soma dos ímpares;
		
		c = 1
		sp = 0
		si = 0
		
		enquanto (c <= 5) {
		    
		    escreva("Digite o " + c + "º valor: ")
		    leia(n)
		    
		    se (n % 2 == 0) {
		        sp = sp + n
		    } senao {
		        si = si + n
		    }
		    
		    c = c + 1
		}
		
		escreva("-----------------------------------------------\n")
		escreva("Somando todos os números pares, temos: ", sp, "\n")
		escreva("Somando todos os números ímpares, temos: ", si, "\n")
		
	}
}
