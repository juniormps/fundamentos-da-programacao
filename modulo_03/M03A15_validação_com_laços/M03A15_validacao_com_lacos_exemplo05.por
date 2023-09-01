programa {
    inclua biblioteca Tipos --> tip
	funcao inicio() {
	    inteiro idade
	    cadeia teclado
	    
	    enquanto (verdadeiro) {
	        escreva("Digite a idade: ")
	        leia(teclado)
	        
	        se (tip.cadeia_e_inteiro(teclado, 10)) {
	            
	            idade = tip.cadeia_para_inteiro(teclado, 10)
	            
	            se (idade >= 0 e idade <= 130) {
	                pare
	            } senao {
	                escreva("<<ERRO>> A idade deve estar entre 0 e 130 anos\n")
	            }
	            
	        } senao {
	            escreva("<<ERRO>> A idade deve ser um número\n")
	        }
	    }
	
	}
}
