programa {
    inclua biblioteca Texto --> txt
	funcao inicio() {
	    //Utilizando la�os com bibliotecas para valida��o de dados
	    cadeia nome
	    
	    faca {
	        escreva("Digite um nome: ")
	        leia(nome)
	    } enquanto (nao(txt.numero_caracteres(nome) >= 3)) 
	
	}
}
