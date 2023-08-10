programa {
    inclua biblioteca Calendario --> c
	funcao inicio() {
		escreva("{ EXERCÍCIO 016 - Serviço Militar v1.0 }\n\n")
		inteiro ano
		escreva("Em que ano você nasceu? ")
		leia(ano)
		inteiro idade = c.ano_atual()-ano
		se (idade>17) {   //A expressão (c.ano_atual()-ano) oferecerá a idade do usuário.
		    escreva("\nSua idade atual é " + idade + " anos.")
		    escreva("\nEspero sinceramente que você já tenha se alistado no serviço militar.\n")
		} senao {
		    escreva("\nSua idade atual é " + idade + " anos.")
		    escreva("\nVocê anida não completou 18 anos. Portanto, ainda não pode se alistar.\n")
		}
	}
}
