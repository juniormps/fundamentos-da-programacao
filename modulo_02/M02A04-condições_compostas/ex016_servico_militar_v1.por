programa {
    inclua biblioteca Calendario --> c
	funcao inicio() {
		escreva("{ EXERC�CIO 016 - Servi�o Militar v1.0 }\n\n")
		inteiro ano
		escreva("Em que ano voc� nasceu? ")
		leia(ano)
		inteiro idade = c.ano_atual()-ano
		se (idade>17) {   //A express�o (c.ano_atual()-ano) oferecer� a idade do usu�rio.
		    escreva("\nSua idade atual � " + idade + " anos.")
		    escreva("\nEspero sinceramente que voc� j� tenha se alistado no servi�o militar.\n")
		} senao {
		    escreva("\nSua idade atual � " + idade + " anos.")
		    escreva("\nVoc� anida n�o completou 18 anos. Portanto, ainda n�o pode se alistar.\n")
		}
	}
}
