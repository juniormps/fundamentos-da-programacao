programa {
	funcao inicio() {
		escreva("{ EXERCÍCIO 037 - Mais Velho e Mais Novo }\n\n")
		
		//VARIÁVEIS:
		inteiro totp, c, idade, maior, menor
		cadeia nome, pmaior, pmenor
		
		//LEGENDA DAS VARIÁVEIS:
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
		escreva("\n")
		
		c = 1
		maior = 0
		menor = 0
		pmaior = ""
		pmenor = ""
		
		enquanto (c <= totp) {
		    
		    escreva("----------------------\n")
		    escreva(c, "° PESSOA\n")
		    escreva("----------------------\n")
		    
		    escreva("NOME: ")
		    leia(nome)
		    
		    escreva("IDADE: ")
		    leia(idade)
		    escreva("\n")
		    
		    se (c == 1) {
		        maior = idade
		        menor = idade
		        pmaior = nome
		        pmenor = nome
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
		escreva("A pessoa mais velha é o(a) ", pmaior, ", que tem ", maior, " anos\n")
		escreva("A pessoa mais jovem é o(a) ", pmenor, ", que tem ", menor, " anos\n")
	}
}










