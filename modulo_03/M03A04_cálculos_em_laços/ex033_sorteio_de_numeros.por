programa {
    inclua biblioteca Util --> u
	funcao inicio() {
		escreva("{ EXERCÍCIO 033 - Sorteio de números }\n\n")
		
		inteiro n, tot, s, c  //nº sorteado / total de números sorteados / soma dos números sorteados / contagem do total de números a serem sorteados
		
		c = 1
		s = 0
		
		escreva("Quantos números você quer que eu sorteie? ")
		leia(tot)
		
		escreva("------------------------------------------\n")
		
		enquanto (c <= tot) {
		    
		    n = u.sorteia(0, 100)
		    escreva("O " + c + "º valor sorteado foi: " + n + "\n")
		    
		    s = s + n
		    
		    c = c + 1
		    
		    u.aguarde(400)  //esta função coloca um intervalo de tempo entre cada sorteio
		}
		
		escreva("------------------------------------------\n")
		escreva("Somando todos os valores soretados, temos: " + s + "\n")
	}
}
