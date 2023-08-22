programa {
	funcao inicio() {
	    
		inteiro idade = 0, soma = 0
		
		enquanto (idade != 9999) {
		    escreva("Digite a sua idade: ")
		    leia(idade)
		    
		    se (idade != 9999) {
		        soma += idade
		    }
		}
		
		escreva("A soma de todas as idades é ", soma)
		
		escreva("\n====== PROGRAMA ENCERRADO ======")
	}
}
