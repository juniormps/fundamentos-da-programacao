programa {
    inclua biblioteca Calendario --> c
	funcao inicio() {
		escreva("{ EXERC�CIO 020 - D� para ver o filme? }\n\n")
		
		//INFORMA��ES:
		//Para conseguir comprar o ingresso � preciso estar dentro do hor�rio e ter a quantia necess�ria.
		
		escreva("==============CINEMA ESTUDONAUTA============\n\n")
		escreva("HOR�RIO DO FILME: 13h - PRE�O DO INGRESSO: R$20\n\n")
		escreva("-----------------------------------------------\n\n")
		
		real valor  //Esta vari�vel informar� a quantia de dinheiro que a o usu�rio possui.
		
		escreva("Quanto dinheiro voc� tem? R$ ")
		leia(valor)
		
		se (nao (c.hora_atual(falso) > 13) e (valor >= 20)) {
		    escreva("Agora s�o " + c.hora_atual(falso) + " horas. Voc� consegue comprar o ingresso!\n")
		} senao {
		    escreva("Agora s�o " + c.hora_atual(falso) + " horas. Infelizmente n�o � poss�vel comprar o ingresso!\n")
		}
	}
}
