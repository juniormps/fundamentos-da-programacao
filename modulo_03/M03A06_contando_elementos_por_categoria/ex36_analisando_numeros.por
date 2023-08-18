programa {
    inclua biblioteca Util --> u
	funcao inicio() {
		escreva("{ EXERCÍCIO 036 - Analisando Números }\n\n")
		
		//VARIÁVEIS
		inteiro ntotal, c, n, mc, dt
		
		//LEGENDA DAS VARIÁVEIS
		//ntotal = total de números a serem sorteados
		//c = contagem
		//n = número sorteado
		//mc = quantidade de números sorteados maiores que cinco
		//dt = quantidade de números sorteados divisíveis por três
		
		escreva("Quentos números vou sortear? ")
		leia(ntotal)
		
		escreva("Sorteando ", ntotal, " números... ")
		
		c = 1
		mc = 0
		dt = 0
		
		enquanto (c <= ntotal) {
		    
		    n = sorteia(0, 10)
		    escreva(n, ".. ")
		    
		    c++
		    
		    u.aguarde(400)
		    
		    se (n > 5) {
		        mc++
		    }
		    
		    se (n % 3 == 0) {
		        dt++
		    }
		}
		
		escreva("\n-----------------------------------------\n")
		escreva("Dos ", ntotal, " números sorteados\n")
		escreva(mc, " são maiores que cinco\n")
		escreva(dt, " são divisíveis por três\n")
	}
}










