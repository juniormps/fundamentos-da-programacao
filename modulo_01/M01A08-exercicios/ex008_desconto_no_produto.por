programa {
    inclua biblioteca Matematica --> mat
	funcao inicio() {
		escreva("{ EXERC�CIO 008 - Desconto no produto }\n")
		real preco
		escreva("\nQual � o pre�o do produto? R$")
		leia(preco)
		real preco_novo = preco-(preco*5/100)
		escreva("\nCom 5% de desconto, o produto ir� sair por R$" + mat.arredondar((preco_novo), 2) + "\n")
	}
}
