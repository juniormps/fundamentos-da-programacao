programa {
    inclua biblioteca Util --> u
	funcao inicio() {
		escreva("{ EXERC�CIO 036 - Analisando N�meros }\n\n")
		
		//VARI�VEIS
		inteiro ntotal, c, n, mc, dt
		
		//LEGENDA DAS VARI�VEIS
		//ntotal = total de n�meros a serem sorteados
		//c = contagem
		//n = n�mero sorteado
		//mc = quantidade de n�meros sorteados maiores que cinco
		//dt = quantidade de n�meros sorteados divis�veis por tr�s
		
		escreva("Quentos n�meros vou sortear? ")
		leia(ntotal)
		
		escreva("Sorteando ", ntotal, " n�meros... ")
		
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
		escreva("Dos ", ntotal, " n�meros sorteados\n")
		escreva(mc, " s�o maiores que cinco\n")
		escreva(dt, " s�o divis�veis por tr�s\n")
	}
}










