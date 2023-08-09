programa {
    inclua biblioteca Calendario --> c
	funcao inicio() {
		escreva("{ EXERCÍCIO 020 - Dá para ver o filme? }\n\n")
		
		//INFORMAÇÕES:
		//Para conseguir comprar o ingresso é preciso estar dentro do horário e ter a quantia necessária.
		
		escreva("==============CINEMA ESTUDONAUTA============\n\n")
		escreva("HORÁRIO DO FILME: 13h - PREÇO DO INGRESSO: R$20\n\n")
		escreva("-----------------------------------------------\n\n")
		
		real valor  //Esta variável informará a quantia de dinheiro que a o usuário possui.
		
		escreva("Quanto dinheiro você tem? R$ ")
		leia(valor)
		
		se (nao (c.hora_atual(falso) > 13) e (valor >= 20)) {
		    escreva("Agora são " + c.hora_atual(falso) + " horas. Você consegue comprar o ingresso!\n")
		} senao {
		    escreva("Agora são " + c.hora_atual(falso) + " horas. Infelizmente não é possível comprar o ingresso!\n")
		}
	}
}
