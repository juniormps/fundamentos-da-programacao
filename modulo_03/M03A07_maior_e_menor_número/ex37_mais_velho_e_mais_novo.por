programa {
	funcao inicio() {
		escreva("{ EXERC�CIO 037 - Mais Velho e Mais Novo }\n\n")
		
		//VARI�VEIS:
		inteiro totp, c, idade, maior, menor
		cadeia nome, pmaior, pmenor
		
		//LEGENDA DAS VARI�VEIS:
		//totp = total de pessoas
		//c = contagem
		//idade = idade de cada pessoa
		//nome = primeiro nome de cada pessoa
		//pmaior = pessoa com maior idade
		//pmenor = pessoa com menor idade
		//maior = maior idade
		//menor = menor idade
		
		escreva("Quantas pessoas vamos cadastrar? ")
		leia(totp)  //total de pessoas
		
		c = 1
		maior = 0
		menor = 0
		pmaior = ""
		pmenor = ""
		
		enquanto (c <= totp) {
		    
		    escreva("----------------------\n")
		    escreva(c, "� PESSOA\n")
		    escreva("----------------------\n")
		    
		    escreva("NOME: ")
		    leia(nome)
		    
		    escreva("IDADE: ")
		    leia(idade)
		    
		    se (c == 1) {
		        maior = idade
		        menor = idade
		    } senao {
		        
		        se (idade > maior) {
		            maior = idade
		            pmaior = nome
		        }
		        
		        se (idade < menor) {
		            menor = idade
		            pmenor = nome
		        }
		    }
		    
		    c++
		}
		
		escreva("------------------------------------\n")
		escreva("A pessoa mais velha � o ", pmaior, " que tem ", maior, " anos\n")
		escreva("A pessoa mais jovem � o ", pmenor, " que tem ", menor, " anos\n")
	}
}










