programa {
	funcao inicio() {
		escreva("{ EXERC�CIO 045 - Jogo de Adivinhar V.2.0 }\n\n")
		
		//VARI�VEIS
		inteiro n, totc, resp
		caracter resptwo
		
		totc = 0  //total de chances
		
		escreva(
		    "Vou pensar em um n�mero entre 1 e 10\n",
		    "Voc� tem 3 CHANCES para adivinhar!\n",
		    "------------------------------------\n"
		)
		
		faca {
    		n = sorteia(1, 10)
    		
    		enquanto (verdadeiro) {
    		    
    		    totc++
    		    
    		    escreva("\n[Chance ", totc, "/3] Em que n�mero pensei? ")
    		    leia(resp)
    		    
    		    se (totc < 3) {
    		        
        		    se (resp > n) {
        		        escreva("Ainda n�o foi dessa vez... Mas vou te dar uma dica: chute um valor MENOR\n")
        		    }
        		    
        		    se (resp < n) {
        		        escreva("Ainda n�o foi dessa vez... Mas vou te dar uma dica: chute um valor MAIOR\n")
        		    }
        		    
        		    se (resp == n) {
        		        escreva("\nPARAB�NS!!! VOC� ACERTOU EM ", totc, " TENTATIVAS!\n")
        		        pare
        		    }
    		    }
    		    
    		    se (totc == 3) {
    		        
    		        se (resp > n ou resp < n) {
        		        escreva("\nAinda n�o foi dessa vez... Suas chances acabaram!\n")
        		        pare
        		    }
        		    
        		    se (resp == n) {
        		        escreva("\nPARAB�NS!!! VOC� ACERTOU EM ", totc, " TENTATIVAS!\n")
        		        pare
        		    }
    		    }
    		    
    		} 
    		
    		escreva("\nQuer tentar de novo? ")
    		leia(resptwo)
    		
    		totc = 0
    		
		} enquanto (resptwo == 's' ou resptwo == 'S')
		
	}
}









