programa {
    inclua biblioteca Calendario --> c
	funcao inicio() {
	    escreva("{ EXERC�CIO 015 - Fila de Banco }\n\n")
	    
	    inteiro ano
	    escreva("Em que ano voc� nasceu? ")
	    leia(ano)
	    
	    inteiro idade = c.ano_atual()-ano
	    escreva("\nVoc� tem " + idade + " anos de idade, certo? Seja bem-vindo(a) ao Banco Estudonauta!")
	    
	    se (idade>=65) {
	        escreva("\n\n=========== ATEN��O! ===========\n")
	        escreva("DIRIJA-SE PARA A FILA PREFERENCIAL!\n")
	    }
	}
}
