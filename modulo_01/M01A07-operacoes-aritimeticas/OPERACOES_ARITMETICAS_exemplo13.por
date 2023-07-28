programa {
    inclua biblioteca Tipos --> t
	funcao inicio() {
		inteiro a = 19, b = 2
		real r = t.inteiro_para_real(a)/b
		escreva(r)
	}
}

/*
Esta função "inteiro_para_real" da biblioteca "Tipos" transforma o resultado em um 
número real, mesmo que o divosor e o dividendo sejam números inteiros. E assim, 
consiga aprensentar um resultado fracionário se for o caso.
*/
