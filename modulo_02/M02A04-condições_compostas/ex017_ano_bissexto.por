programa {
	funcao inicio() {
		escreva("{ EXERC�CIO 017 - Ano Bissexto }\n\n")
		inteiro ano
		escreva("Digite um ano para saber se ele � bissexto: ")
		leia(ano)
		se (((ano%4==0) e (ano%100!=0)) ou ((ano%100==0) e (ano%400==0))) {
		    escreva("\nO ano " + ano + " � BISSEXTO!\n")
		} senao {
		    escreva("\nO ano " + ano + " N�O � BISSEXTO!\n")
		}
	}
}
