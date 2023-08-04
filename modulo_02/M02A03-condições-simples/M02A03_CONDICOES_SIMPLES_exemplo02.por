programa {
    inclua biblioteca Calendario --> c
	funcao inicio() {
	    inteiro ano, idade
	    escreva("Em que ano você nasceu? ")
	    leia(ano)
	    idade = c.ano_atual() - ano  //utilizando esta função da biblioteca "Calendário", eu consigo o ano atual para subtrair o ano de nascimento da pessoa e encontrar a idade da mesma.
	    escreva("\nVocê tem " + idade + " anos\n")
	    se (idade>=18 e idade<25) { //na maioria das linguagens não é permitido escrever esta expressão da seguinte forma: 18<=idade<25
	        escreva("\nVocê já pensou em fazer um concurso para Estudonauta?\n")
	    }
	}
}
