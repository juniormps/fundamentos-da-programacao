programa {
    inclua biblioteca Calendario --> c
	funcao inicio() {
	    inteiro ano, idade
	    escreva("Em que ano voc� nasceu? ")
	    leia(ano)
	    idade = c.ano_atual() - ano  //utilizando esta fun��o da biblioteca "Calend�rio", eu consigo o ano atual para subtrair o ano de nascimento da pessoa e encontrar a idade da mesma.
	    escreva("\nVoc� tem " + idade + " anos\n")
	    se (idade>=18 e idade<25) { //na maioria das linguagens n�o � permitido escrever esta express�o da seguinte forma: 18<=idade<25
	        escreva("\nVoc� j� pensou em fazer um concurso para Estudonauta?\n")
	    }
	}
}
