programa {
    inclua biblioteca Texto --> txt
	funcao inicio() {
		cadeia nome = "Estudonauta"
		escreva(txt.extrair_subtexto(nome, 0, 3)) 
		/*obs.: o primeiro número é o número do caracter de onde quer que inície a extração (inclusive) e o segundo número é onde quer termine (exclusive)*/
	}
}
