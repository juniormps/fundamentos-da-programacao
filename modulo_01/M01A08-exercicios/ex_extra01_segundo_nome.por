programa {
    inclua biblioteca Texto --> txt
	funcao inicio() {
		escreva("{ EXERC�CIO EXTRA 01 - Segundo nome }\n")
		cadeia nome
		escreva("\nDigite seu nome completo: ")
		leia(nome)
		inteiro inicio_nome2 = txt.posicao_texto(" ", nome, 0) //informa a posi��o do primeiro espa�o em branco / fim do primeiro nome
		inteiro fim_nome2 = txt.posicao_texto(" ", nome, (inicio_nome2 + 1))
		cadeia nome2 = txt.extrair_subtexto(nome, inicio_nome2, fim_nome2) //informa o primeiro nome da pessoa
		escreva("Seu segundo nome � " + nome2 + "\n")
	}
}
