programa {
    inclua biblioteca Texto --> t
	funcao inicio() {
		escreva("{ EXERCÍCIO 024 - Qual estado? }\n\n")
		
		cadeia estado
		
		escreva("Em que estado do Brasil você nasceu? ")
		leia(estado)
		
		estado = t.caixa_alta(estado)
		
		escreva("Nascendo no estado " + estado + ", você é ")
		
		se (estado == "RJ") escreva("CARIOCA")
		senao se (estado == "SP") escreva("PAULISTA")
		senao se (estado == "BA") escreva("BAIANO")
		senao se (estado == "ES") escreva("CAPIXABA")
		senao se (estado == "MG") escreva("MINEIRO")
		senao se (estado == "RS") escreva("GAÚCHO")
		senao se (estado == "CE") escreva("CEARENSE")
		senao se (estado == "PA") escreva("PARAENSE")
		senao escreva (" natural da sua cidade, mas ainda não sei como te chamar.")
		
		escreva("\n")
	}
}














