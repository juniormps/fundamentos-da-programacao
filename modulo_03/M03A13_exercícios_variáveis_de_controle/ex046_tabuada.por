programa {
    inclua biblioteca Util --> u
	funcao inicio() {
		escreva("{ EXERCÍCIO 046 - Tabuada }\n\n")
		
		//VARIÁVEIS
		inteiro n, c
		
		escreva("NÚMERO = ")
		leia(n)
		
		para (c = 1; c <= 10; c++ ) {
		    escreva("\n", n, " x ", c, " = ", (n * c))
		    u.aguarde(500)
		}
		
		escreva("\n")
	}
}
