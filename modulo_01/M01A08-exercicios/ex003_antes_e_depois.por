programa {
	funcao inicio() {
        inteiro n
	    escreva("Me diga um número: ")
	    leia(n)
	    inteiro a = n - 1
	    inteiro s = n + 1
	    escreva("\n")
	    escreva("O antecessor de " + n + " é " + a + "\n")
	    escreva("O sucessor de " + n + " é " + s)
	}
}

/* O exercício tbm poderia ser feito assim:

	    inteiro n
	    escreva("Me diga um número: ")
	    leia(n)
	    escreva("\n")
	    escreva("O antecessor de " + n + " é " + (n-1) + "\n")
	    escreva("O sucessor de " + n + " é " + (n+1))
*/
