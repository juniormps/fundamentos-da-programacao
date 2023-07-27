programa {
    inclua biblioteca Util
	funcao inicio() {
		inteiro n = Util.sorteia(1, 1000)
		escreva("Aguarde... Gerando o valor... ")
		Util.aguarde(2000)   //tempo em milesegundos solicitado para aguardar
		escreva("...Acabou")
	}
}
