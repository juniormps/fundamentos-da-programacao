programa {
    inclua biblioteca Util --> u
	funcao inicio() {
		escreva("{ EXERC�CIO 029 - Contagem Personalizada }\n\n")
		
		inteiro n, n1, n2, incre
		
		escreva("Onde come�a a contagem? ")
		leia(n1)
		
		escreva("Onde termina a contagem? ")
		leia(n2)
		
		escreva("Qual vai ser o incremento? ")
		leia(incre)
		
		escreva("\n")
		
		n = n1
		
		enquanto (n <= n2 ) {
		    u.aguarde(500)
		    escreva(n)
		    u.aguarde(500)
		    escreva(" - ")
		    n = n + incre
		}
		
		escreva("FIM!\n")
	}
}
