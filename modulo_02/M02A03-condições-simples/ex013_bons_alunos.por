programa {
	funcao inicio() {
	    escreva("{ EXERC�CIO 013 - Bons Alunos }\n\n")
	    
	    real n1
	    escreva("Digite sua primeira nota: ")
	    leia(n1)
	    
	    real n2
	    escreva("Digite sua segunda nota: ")
	    leia(n2)
	    
	    real media = (n1+n2)/2
	    
	    se (media>=7) {
	        escreva("MEUS PARAB�NS! ")
	    }
	    escreva("A sua m�dia foi de " + media + "\n")
	}
}
