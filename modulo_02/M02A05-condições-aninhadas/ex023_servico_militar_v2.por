programa {
    inclua biblioteca Matematica --> m
    inclua biblioteca Calendario --> c
	funcao inicio() {
		escreva("{ EXERC�CIO 023 - Servi�o Militar v2.0 }\n\n")
		
		inteiro ano, idade, ano_alist, tempo
		
		escreva("Em que ano voc� nasceu? ")
		leia(ano)
		
		idade = c.ano_atual() - ano
		ano_alist = ano + 18  //Esta vari�vel informar� o ano em que usu�rio deveria se alistar
		tempo = m.valor_absoluto(c.ano_atual() - ano_alist) //Esta vari�vel informar� quanto tempo falta para o usu�rio poder se alistar
		
		se (idade > 18) {
		    escreva("\nSua idade atual � " + idade + " anos.\n")
		    escreva("Voc� deveria ter se alistado em " + ano_alist + ".\n")
		    escreva("Voc� est� atrasado " + tempo + " ano(s)\n")
		    escreva("Esperamos que voc� j� tenha cumprido sua obriga��o com o servi�o militar.\n")
		} senao se (idade < 18) {
		    escreva("\nSua idade atual � " + idade + " anos.\n")
		    escreva("Voc� anida n�o completou 18 anos. Isto ir� acontecer em " + ano_alist + ".\n")
		    escreva("Ainda faltam " + tempo + " ano(s). AGUARDE!\n")
		} senao {
		    escreva("\nVoc� completa 18 anos neste ano de " + c.ano_atual() + ". ALISTE-SE NO SERVI�O MILITAR!\n")
		}
	}
}
