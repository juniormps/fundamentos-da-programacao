programa {
    inclua biblioteca Util --> u
	funcao inicio() {
		escreva("{ EXERC�CIO 033 - Sorteio de n�meros }\n\n")
		
		inteiro n, tot, s, c  //n� sorteado / total de n�meros sorteados / soma dos n�meros sorteados / contagem do total de n�meros a serem sorteados
		
		c = 1
		s = 0
		
		escreva("Quantos n�meros voc� quer que eu sorteie? ")
		leia(tot)
		
		escreva("------------------------------------------\n")
		
		enquanto (c <= tot) {
		    
		    n = u.sorteia(0, 100)
		    escreva("O " + c + "� valor sorteado foi: " + n + "\n")
		    
		    s = s + n
		    
		    c = c + 1
		    
		    u.aguarde(400)  //esta fun��o coloca um intervalo de tempo entre cada sorteio
		}
		
		escreva("------------------------------------------\n")
		escreva("Somando todos os valores soretados, temos: " + s + "\n")
	}
}
