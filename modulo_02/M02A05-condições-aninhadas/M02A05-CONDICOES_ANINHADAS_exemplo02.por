programa {
	funcao inicio() {
	    
	    //Estrutura abreviada de CONDI��ES ANINHADAS, utilizando o comando "SENAO SE".
	    
	    inteiro n1,n2
	    
		escreva("Digite dois n�meros e saiba qual � o maior:\n\n")
		
		escreva("Primeiro n�mero: ")
		leia(n1)
		
		escreva("Segudo n�mero: ")
		leia(n2)
		
		se (n1 > n2) {
		    escreva("\nO maior � ", n1)
		} senao se (n1 < n2) {
		    escreva("\nO maior � ", n2)
		} senao {
		    escreva("Eles s�o iguais")
		}
		 
	}
}