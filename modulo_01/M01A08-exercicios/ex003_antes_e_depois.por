programa {
	funcao inicio() {
        inteiro n
	    escreva("Me diga um n�mero: ")
	    leia(n)
	    inteiro a = n - 1
	    inteiro s = n + 1
	    escreva("\n")
	    escreva("O antecessor de " + n + " � " + a + "\n")
	    escreva("O sucessor de " + n + " � " + s)
	}
}

/* O exerc�cio tbm poderia ser feito assim:

	    inteiro n
	    escreva("Me diga um n�mero: ")
	    leia(n)
	    escreva("\n")
	    escreva("O antecessor de " + n + " � " + (n-1) + "\n")
	    escreva("O sucessor de " + n + " � " + (n+1))
*/
