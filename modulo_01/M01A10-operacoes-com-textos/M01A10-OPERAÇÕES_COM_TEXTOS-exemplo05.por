programa {
    inclua biblioteca Texto --> txt
	funcao inicio() {
		cadeia nome = "Estudonauta"
		escreva(txt.extrair_subtexto(nome, 0, 3)) 
		/*obs.: o primeiro n�mero � o n�mero do caracter de onde quer que in�cie a extra��o (inclusive) e o segundo n�mero � onde quer termine (exclusive)*/
	}
}
