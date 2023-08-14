programa {
	funcao inicio() {
		inteiro num
		
		escreva("Digite um número pequeno: ")
		
		leia(num)
		
		escolha(num) {
		    caso 1:
	            escreva("Um")
	            pare
		    caso 2:
		        escreva("Dois")
		        pare
		    caso 3:
		        escreva("Três")
		        pare
		    caso 4:
		        escreva("Quatro")
		        pare
		    caso contrario:
		        escreva("Erro")
		        pare
		}
		
		escreva("\n\nFIM DO PROCESSAMENTO")
	}
}
