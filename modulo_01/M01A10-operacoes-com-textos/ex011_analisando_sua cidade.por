programa {
    inclua biblioteca Texto --> txt
	funcao inicio() {
		escreva("{ EXERC�CIO 011 - Analisando sua cidade }\n")
		cadeia cidade
		escreva("\nEm que cidade voc� mora? ")
		leia(cidade)
		escreva("\n------------ANALISANDO-----------\n")
		escreva("\nVoc� mora na cidade " + txt.caixa_alta(cidade) + "\n")
		escreva("A primeira letra � " + txt.obter_caracter(cidade, 0) + "\n")
		escreva("E cont�m " + txt.numero_caracteres(cidade) + " caracteres\n") //Obs.: a contagem de caracteres conta os espa�os em branco tamb�m.
	}
}
