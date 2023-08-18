programa {
	funcao inicio() {
		escreva("{ EXERC�CIO 035 - Pessoas e seus pesos }\n\n")
		
		//VARI�VEIS:
		inteiro totp, c, h_acima, m_acima
		real pesref, peso
		caracter sx
		
		//LEGENDA DAS VARI�VEIS:
		//totp = total de pessoas
		//c = contagem
		//pesref = peso refer�ncia
		//peso = peso de cada pessoa
		//sx = sexo de cada pessoa
		//h_acima = total de homens acima do peso
		//m_acima = total de mulheres acima do peso
		
		escreva("Quantas pessoas vamos cadastrar? ")
		leia(totp)  //total de pessoas
		
		escreva("Qual � o peso de refer�ncia (em Kg)? ")
		leia(pesref)  //peso refer�ncia
		
		c = 1
		h_acima = 0
		m_acima = 0
		
		enquanto (c <= totp) {
		    
		    escreva("----------------------\n")
		    escreva("PESSOA ", c, " de ", totp, "\n")
		    escreva("----------------------\n")
		    
		    escreva("Peso: ")
		    leia(peso)
		    
		    escreva("Sexo: ")
		    leia(sx)
		    
		    se (peso <= pesref) {
		        escreva("====== PESO DENTRO DO LIMITE (", pesref, "Kg) ======\n")
		    } senao {
		        escreva("====== PESO ACIMA DO LIMITE (", pesref, "Kg) ======\n")
		        
		        se (sx == 'M' ou sx == 'm') {
		            h_acima++
		        } senao se (sx == 'F' ou sx == 'f') {
		            m_acima++
		        }
		    }
		    
		    c++
		}
		
		escreva("------------------------------------\n")
		escreva("Ao todo, temos ", (h_acima + m_acima), " pessoas acima do limite de ", pesref, "Kg\n")
		escreva("E dessas pessoas, ", h_acima, " s�o HOMENS e ", m_acima, " s�o MULHERES\n")
	}
}










