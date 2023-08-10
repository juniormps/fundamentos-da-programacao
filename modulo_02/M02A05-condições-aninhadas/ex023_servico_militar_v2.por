programa {
    inclua biblioteca Matematica --> m
    inclua biblioteca Calendario --> c
	funcao inicio() {
		escreva("{ EXERCÍCIO 023 - Serviço Militar v2.0 }\n\n")
		
		inteiro ano, idade, ano_alist, tempo
		
		escreva("Em que ano você nasceu? ")
		leia(ano)
		
		idade = c.ano_atual() - ano
		ano_alist = ano + 18  //Esta variável informará o ano em que usuário deveria se alistar
		tempo = m.valor_absoluto(c.ano_atual() - ano_alist) //Esta variável informará quanto tempo falta para o usuário poder se alistar
		
		se (idade > 18) {
		    escreva("\nSua idade atual é " + idade + " anos.\n")
		    escreva("Você deveria ter se alistado em " + ano_alist + ".\n")
		    escreva("Você está atrasado " + tempo + " ano(s)\n")
		    escreva("Esperamos que você já tenha cumprido sua obrigação com o serviço militar.\n")
		} senao se (idade < 18) {
		    escreva("\nSua idade atual é " + idade + " anos.\n")
		    escreva("Você anida não completou 18 anos. Isto irá acontecer em " + ano_alist + ".\n")
		    escreva("Ainda faltam " + tempo + " ano(s). AGUARDE!\n")
		} senao {
		    escreva("\nVocê completa 18 anos neste ano de " + c.ano_atual() + ". ALISTE-SE NO SERVIÇO MILITAR!\n")
		}
	}
}
