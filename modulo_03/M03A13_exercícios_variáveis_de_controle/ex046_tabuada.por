programa {
    inclua biblioteca Util --> u
	funcao inicio() {
		escreva("{ EXERC�CIO 046 - Tabuada }\n\n")
		
		//VARI�VEIS
		inteiro n, c
		
		escreva("N�MERO = ")
		leia(n)
		
		para (c = 1; c <= 10; c++ ) {
		    escreva("\n", n, " x ", c, " = ", (n * c))
		    u.aguarde(500)
		}
		
		escreva("\n")
	}
}
