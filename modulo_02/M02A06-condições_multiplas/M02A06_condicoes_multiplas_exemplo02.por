programa {
	funcao inicio() {
		caracter let
		
		escreva("Digite uma letra qualquer: ")
		
		leia(let)
		
		escolha(let) {
		    caso 'a': caso 'A':
	            escreva("Primeira letra")
	            pare
		    caso 'b': caso 'B':
		        escreva("Segunda letra")
		        pare
		    caso contrario:
		        escreva("Erro")
		        pare
		}
		
		escreva("\n\nFIM DO PROCESSAMENTO")
	}
}
