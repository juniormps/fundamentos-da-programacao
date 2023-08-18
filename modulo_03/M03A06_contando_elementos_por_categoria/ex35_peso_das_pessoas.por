programa {
	funcao inicio() {
		escreva("{ EXERCÍCIO 035 - Pessoas e seus pesos }\n\n")
		
		//VARIÁVEIS:
		inteiro totp, c, h_acima, m_acima
		real pesref, peso
		caracter sx
		
		//LEGENDA DAS VARIÁVEIS:
		//totp = total de pessoas
		//c = contagem
		//pesref = peso referência
		//peso = peso de cada pessoa
		//sx = sexo de cada pessoa
		//h_acima = total de homens acima do peso
		//m_acima = total de mulheres acima do peso
		
		escreva("Quantas pessoas vamos cadastrar? ")
		leia(totp)  //total de pessoas
		
		escreva("Qual é o peso de referência (em Kg)? ")
		leia(pesref)  //peso referência
		
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
		escreva("E dessas pessoas, ", h_acima, " são HOMENS e ", m_acima, " são MULHERES\n")
	}
}










