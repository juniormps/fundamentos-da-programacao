programa {
	funcao inicio() {
		escreva("{ EXERC�CIO 005 - M�dia do aluno } \n")
		real nota1
		escreva("Primeira nota: ")
		leia(nota1)
		real nota2
		escreva("Segunda nota: ")
		leia(nota2)
		escreva("\nAs notas do aluno foram " + nota1 + " e " + nota2)
		real media = (nota1+nota2)/2
		escreva("\nA m�dia final foi " + media + "\n")
	}
}
