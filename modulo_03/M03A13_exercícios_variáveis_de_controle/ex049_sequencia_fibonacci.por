programa {
    inclua biblioteca Util --> u
	funcao inicio() {
		escreva("{ EXERCÍCIO 049 - Sequência Fibonacci }\n\n")
		
		//VARIÁVEIS
		inteiro ne, c, nfibo, nfibo_ult, nfibo_penult
		
		nfibo = 0
		nfibo_ult = 0
		nfibo_penult = 0
		
		escreva("Quantos elementos você quer exibir? ")
		leia(ne)  //número de elementos
		
		escreva("\n")
		
		
        para (c = 1; c <= ne; c++) {
        
            se (c == 1) {
                escreva(nfibo, " ")
                nfibo_ult = nfibo
            } 
            
            se (c == 2) {
                nfibo++
                escreva(nfibo, " ")
                nfibo_penult = 0
                nfibo_ult = nfibo
            }
            
            se (c > 2) {
                nfibo = (nfibo_ult + nfibo_penult)
                escreva(nfibo, " ")
                nfibo_penult = nfibo_ult
                nfibo_ult = nfibo
            } 
            
            u.aguarde(500)
        
        }
        
        escreva("\n")
        
	}
}
