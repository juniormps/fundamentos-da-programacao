programa {
	funcao inicio() {
		 
		 real nota1, nota2, media
		 
		 escreva("Primeira nota: ")
		 leia(nota1)
		 
		 escreva("Segunda nota: ")
		 leia(nota2)
		 
		 media = (nota1 + nota2) / 2
		 
		 escreva("O aluno obteve a média " + media + "\n")
		 
		 se (media < 5) {
		     escreva("ALUNO REPROVADO")
		 } senao se ((media >= 5) e media < 7) {
		     escreva("ALUNO EM RECUPERAÇÃO")
		 } senao se (media >= 7) {
		     escreva("ALUNO APROVADO")
		 }
		 
	}
}