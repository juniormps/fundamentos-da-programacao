programa {
    inclua biblioteca Matematica --> mat
	funcao inicio() {
		escreva("{ EXERCÍCIO 008 - Desconto no produto }\n")
		real preco
		escreva("\nQual é o preço do produto? R$")
		leia(preco)
		real preco_novo = preco-(preco*5/100)
		escreva("\nCom 5% de desconto, o produto irá sair por R$" + mat.arredondar((preco_novo), 2) + "\n")
	}
}
