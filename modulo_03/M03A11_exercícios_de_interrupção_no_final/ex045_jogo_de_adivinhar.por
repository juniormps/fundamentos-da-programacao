programa {
	funcao inicio() {
		escreva("{ EXERC�CIO 045 - Jogo de Adivinhar }\n\n")
		
		//VARI�VEIS
		inteiro n, totc, resp
		
		totc = 1  //total de chances
		
		escreva(
		    "Vou pensar em um n�mero entre 1 e 10\n",
		    "Voc� tem 3 CHANCES para adivinhar!\n",
		    "------------------------------------\n"
		)
		
		n = sorteia(1, 5)
		
		faca {
		    
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
    		    }
    		    
    		    se (resp == n) {
    		        escreva("\nPARAB�NS!!! VOC� ACERTOU EM ", totc, " TENTATIVAS!\n")
    		        pare
    		    }
		    }
		    
		    totc++
		} enquanto (totc <= 3)
		
	}
}









