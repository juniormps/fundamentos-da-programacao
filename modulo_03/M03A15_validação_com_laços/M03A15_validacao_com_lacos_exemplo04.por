programa {
    inclua biblioteca Texto --> txt
	funcao inicio() {
	    cadeia nome
	    
	    enquanto (verdadeiro) {
	        escreva("Digite um nome: ")
	        leia(nome)
	        
	        se (txt.numero_caracteres(nome) >= 3) {
	            pare
	        } senao {
	            escreva("<<ERRO>> O nome deve ter pelo menos 3 letras\n")
	        }
	    }
	
	}
}
