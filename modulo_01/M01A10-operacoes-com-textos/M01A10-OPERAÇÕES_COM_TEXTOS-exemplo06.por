programa {
    inclua biblioteca Texto --> txt
	funcao inicio() {
		cadeia nome = "Estudonauta"
		escreva(txt.posicao_texto("a", nome, 3)) 
		
		//letra que deseja achar a posição e número do caractere que deseja iniciar a pesquisa
		//obs.: caso a letra pesquisada não exista no texto, o programa retornará com resultado -1
	}
}
