programa {
    inclua biblioteca Tipos --> t
	funcao inicio() {
		inteiro a = 19, b = 2
		real r = t.inteiro_para_real(a)/b
		escreva(r)
	}
}

/*
Esta fun��o "inteiro_para_real" da biblioteca "Tipos" transforma o resultado em um 
n�mero real, mesmo que o divosor e o dividendo sejam n�meros inteiros. E assim, 
consiga aprensentar um resultado fracion�rio se for o caso.
*/
