programa {
	funcao inicio() {
		escreva("{ EXERCÍCIO 045 - Jogo de Adivinhar }\n\n")
		
		//VARIÁVEIS
		inteiro n, totc, resp
		
		totc = 1  //total de chances
		
		escreva(
		    "Vou pensar em um número entre 1 e 10\n",
		    "Você tem 3 CHANCES para adivinhar!\n",
		    "------------------------------------\n"
		)
		
		n = sorteia(1, 5)
		
		faca {
		    
		    escreva("\n[Chance ", totc, "/3] Em que número pensei? ")
		    leia(resp)
		    
		    se (totc < 3) {
		        
    		    se (resp > n) {
    		        escreva("Ainda não foi dessa vez... Mas vou te dar uma dica: chute um valor MENOR\n")
    		    }
    		    
    		    se (resp < n) {
    		        escreva("Ainda não foi dessa vez... Mas vou te dar uma dica: chute um valor MAIOR\n")
    		    }
    		    
    		    se (resp == n) {
    		        escreva("\nPARABÉNS!!! VOCÊ ACERTOU EM ", totc, " TENTATIVAS!\n")
    		        pare
    		    }
		    }
		    
		    se (totc == 3) {
		        
		        se (resp > n ou resp < n) {
    		        escreva("\nAinda não foi dessa vez... Suas chances acabaram!\n")
    		    }
    		    
    		    se (resp == n) {
    		        escreva("\nPARABÉNS!!! VOCÊ ACERTOU EM ", totc, " TENTATIVAS!\n")
    		        pare
    		    }
		    }
		    
		    totc++
		} enquanto (totc <= 3)
		
	}
}









