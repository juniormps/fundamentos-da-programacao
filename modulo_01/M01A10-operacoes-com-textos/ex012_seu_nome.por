programa {
    inclua biblioteca Texto --> txt
	funcao inicio() {
		escreva("{ EXERCÍCIO 012 - Seu nome }\n")
		cadeia nome
		escreva("\nDigite seu nome completo: ")
		leia(nome)
		inteiro fim_nome1 = txt.posicao_texto(" ", nome, 0) //informa a posição do primeiro espaço em branco / fim do primeiro nome
		cadeia nome1 = txt.extrair_subtexto(nome, 0, fim_nome1) //informa o primeiro nome da pessoa
		escreva("Seu primeiro nome é " + nome1 + "\n")
	}
}
