programa {
    inclua biblioteca Texto --> txt
	funcao inicio() {
		escreva("{ EXERCÍCIO EXTRA 01 - Segundo nome }\n")
		cadeia nome
		escreva("\nDigite seu nome completo: ")
		leia(nome)
		inteiro inicio_nome2 = txt.posicao_texto(" ", nome, 0) //informa a posição do primeiro espaço em branco / fim do primeiro nome
		inteiro fim_nome2 = txt.posicao_texto(" ", nome, (inicio_nome2 + 1))
		cadeia nome2 = txt.extrair_subtexto(nome, inicio_nome2, fim_nome2) //informa o primeiro nome da pessoa
		escreva("Seu segundo nome é " + nome2 + "\n")
	}
}
