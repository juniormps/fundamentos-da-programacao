programa {
	funcao inicio() {
	    
	    //Estrutura abreviada de CONDIÇÕES ANINHADAS, utilizando o comando "SENAO SE".
	    
	    inteiro n1,n2
	    
		escreva("Digite dois números e saiba qual é o maior:\n\n")
		
		escreva("Primeiro número: ")
		leia(n1)
		
		escreva("Segudo número: ")
		leia(n2)
		
		se (n1 > n2) {
		    escreva("\nO maior é ", n1)
		} senao se (n1 < n2) {
		    escreva("\nO maior é ", n2)
		} senao {
		    escreva("Eles são iguais")
		}
		 
	}
}