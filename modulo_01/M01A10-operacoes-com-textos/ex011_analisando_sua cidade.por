programa {
    inclua biblioteca Texto --> txt
	funcao inicio() {
		escreva("{ EXERCÍCIO 011 - Analisando sua cidade }\n")
		cadeia cidade
		escreva("\nEm que cidade você mora? ")
		leia(cidade)
		escreva("\n------------ANALISANDO-----------\n")
		escreva("\nVocê mora na cidade " + txt.caixa_alta(cidade) + "\n")
		escreva("A primeira letra é " + txt.obter_caracter(cidade, 0) + "\n")
		escreva("E contém " + txt.numero_caracteres(cidade) + " caracteres\n") //Obs.: a contagem de caracteres conta os espaços em branco também.
	}
}
