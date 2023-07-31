programa {
    inclua biblioteca Matematica --> mat
	funcao inicio() {
		escreva("{ EXERCÍCIO 009 - Aumento Salarial\n")
		cadeia funcionario
		escreva("Nome do funcionário: ")
		leia(funcionario)
		real sal
		escreva("Salário: R$")
		leia(sal)
		real reajus
		escreva("Reajuste (%): ")
		leia(reajus)
		escreva("\n-----------RESULTADO---------\n")
		escreva(funcionario + " ganhava " + sal)
		escreva("\ne depois de ganhar " + reajus + "% de aumento\n")
		real sal_novo = sal+(sal*reajus/100)
		escreva("vai passar a ganhar R$" + mat.arredondar((sal_novo), 2) + "\n")
	}
}
