programa {
    inclua biblioteca Calendario --> c
	funcao inicio() {
	    escreva("{ EXERCÍCIO 015 - Fila de Banco }\n\n")
	    
	    inteiro ano
	    escreva("Em que ano você nasceu? ")
	    leia(ano)
	    
	    inteiro idade = c.ano_atual()-ano
	    escreva("\nVocê tem " + idade + " anos de idade, certo? Seja bem-vindo(a) ao Banco Estudonauta!")
	    
	    se (idade>=65) {
	        escreva("\n\n=========== ATENÇÃO! ===========\n")
	        escreva("DIRIJA-SE PARA A FILA PREFERENCIAL!\n")
	    }
	}
}
