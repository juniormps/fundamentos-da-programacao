programa {
    inclua biblioteca Texto --> txt
	funcao inicio() {
	    //Utilizando laços com bibliotecas para validação de dados
	    cadeia nome
	    
	    faca {
	        escreva("Digite um nome: ")
	        leia(nome)
	    } enquanto (nao(txt.numero_caracteres(nome) >= 3)) 
	
	}
}
