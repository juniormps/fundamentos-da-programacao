programa {
    inclua biblioteca Matematica --> m
    inclua biblioteca Calendario --> c
	funcao inicio() {
		escreva("{ EXERCÍCIO 025 - Três valores em ordem }\n\n")
		
		inteiro n1, n2, n3
		
		escreva("Digite um valor: ")
		leia(n1)
		
		escreva("Digite outro valor: ")
		leia(n2)
		
		escreva("Digite mais um valor: ")
		leia(n3)
		
		escreva("----------------------\n")
		
		se (n1 > n2 e n2 > n3) {
		    escreva("MAIOR: " + n1 + "\n")
		    escreva("INTERMEDIÁRIO: " + n2 + "\n")
		    escreva("MENOR: " + n3 + "\n")
		} senao se (n1 > n3 e n3 > n2) {
		    escreva("MAIOR: " + n1 + "\n")
		    escreva("INTERMEDIÁRIO: " + n3 + "\n")
		    escreva("MENOR: " + n2 + "\n")
		} senao se (n2 > n1 e n1 > n3) {
		    escreva("MAIOR: " + n2 + "\n")
		    escreva("INTERMEDIÁRIO: " + n1 + "\n")
		    escreva("MENOR: " + n3 + "\n")
		} senao se (n2 > n3 e n3 > n1) {
		    escreva("MAIOR: " + n2 + "\n")
		    escreva("INTERMEDIÁRIO: " + n3 + "\n")
		    escreva("MENOR: " + n1 + "\n")
		} senao se (n3 > n1 e n1 > n2) {
		    escreva("MAIOR: " + n3 + "\n")
		    escreva("INTERMEDIÁRIO: " + n1 + "\n")
		    escreva("MENOR: " + n2 + "\n")
		} senao se (n3 > n2 e n2 > n1) {
		    escreva("MAIOR: " + n3 + "\n")
		    escreva("INTERMEDIÁRIO: " + n2 + "\n")
		    escreva("MENOR: " + n1 + "\n")
		}
	}
}














