programa {
    inclua biblioteca Tipos --> t
	funcao inicio() {
	    escreva("{ EXERCÍCIO 004 - Operações Aritméticas }\n")
	    inteiro n1
		escreva("Digite um valor: ")
		leia(n1)
		inteiro n2
		escreva("Digite outro valor: ")
		leia(n2)
		escreva("\n-----------RESULTADOS------------\n")
		escreva("SOMA = " + (n1+n2) + "\n")
		escreva("DIFERENÇA = " + (n1-n2) + "\n")
		inteiro quoci_redondo = n1/n2
		escreva("DIVISÃO INTEIRA = " + quoci_redondo + "\n")
		real quociente = t.inteiro_para_real(n1)/n2
		escreva("DIVISÃO REAL = " + quociente + "\n")
		inteiro resto = n1%n2
		escreva("RESTO DA DIVISÃO = " + resto + "\n")
	}
}
