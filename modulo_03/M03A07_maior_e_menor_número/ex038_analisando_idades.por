programa {
	funcao inicio() {
		escreva("{ EXERCÍCIO 038 - Analisando idades }\n\n")
		
		//VARIÁVEIS:
		inteiro totp, c, idade, id_hmaior, id_hmenor, id_mmaior, id_mmenor, toth, totm
		cadeia nome, hmaior, hmenor, mmaior, mmenor
		caracter sx
		
		//LEGENDA DAS VARIÁVEIS:
		//totp = total de pessoas
		//c = contagem
		//idade = idade de cada pessoa
		//nome = primeiro nome de cada pessoa
		//hmaior = homen com maior idade
		//hmenor = homem com menor idade
		//mmaior = mulher com maior idade
		//mmenor = mulher com menor idade
		//id_hmaior = idade maior dos homens
		//id_hmenor = idade menor dos homens
		//id_mmaior = idade maior das mulheres
		//id_mmenor = idade menor das mulheres
		//toth = total de homens
		//totm = total de mulheres
		//sx = sexo
		
		escreva("Quantas pessoas vamos cadastrar? ")
		leia(totp)  //total de pessoas
		escreva("\n")
		
		c = 1
		
		id_mmaior = 0
		id_mmenor = 0
		mmaior = ""
		mmenor = ""
		totm = 0 
		
		id_hmaior = 0
		id_hmenor = 0
		hmaior = ""
		hmenor = ""
		toth = 0
		
		enquanto (c <= totp) {
		    
		    escreva("----------------------\n")
		    escreva(c, "° PESSOA\n")
		    escreva("----------------------\n")
		    
		    escreva("NOME: ")
		    leia(nome)
		    
		    escreva("IDADE: ")
		    leia(idade)
		    
		    escreva("SEXO: ")
		    leia(sx)
		    
		    escreva("\n")
		    
		    se (sx == 'm' ou sx =='M') {
		        
		        toth++
		        
		        se (toth == 1) {
    		        id_hmaior = idade
    		        id_hmenor = idade
    		        hmaior = nome
    		        hmenor = nome
		        } senao {
		        
    		        se (idade > id_hmaior) {
    		            id_hmaior = idade
    		            hmaior = nome
    		        }
    		        
    		        se (idade < id_hmenor) {
    		            id_hmenor = idade
    		            hmenor = nome
    		        }
		        }
		        
		    } senao se (sx == 'f' ou sx == 'F') {
		        
	                totm++
		        
    		        se (totm == 1) {
        		        id_mmaior = idade
        		        id_mmenor = idade
        		        mmaior = nome
        		        mmenor = nome
		            } senao {
		        
        		        se (idade > id_mmaior) {
        		            id_mmaior = idade
        		            mmaior = nome
        		        }
        		        
        		        se (idade < id_mmenor) {
        		            id_mmenor = idade
        		            mmenor = nome
        		        }
		            }
		    }
		    
		    
		    
		    
		    c++
		}
		
		escreva("------------------------------------\n")
		
		//Resultado da análise das mulheres 
		se (totm == 0) {
		    
		    escreva("Não existem mulheres cadastradas.\n")
		    
		} senao {
		    
		    se (totm == 1) {
		        
		        escreva("A única mulher cadastrada é a ", mmaior, ", que tem ", id_mmaior, " anos\n")
		        
		    } 
		    
		    se (totm > 1) {
		        
		        escreva("A mulher mais velha é a ", mmaior, ", que tem ", id_mmaior, " anos\n")
		        escreva("A mulher mais jovem é a ", mmenor, ", que tem ", id_mmenor, " anos\n")
		        
		    }
	    }
	    
	    //Resultado da análise dos Homens
	    se (toth == 0) {
		    
		    escreva("Não existem homens cadastrados.\n")
		    
		} senao {
		    
		    se (toth == 1) {
		        
		        escreva("O único homem cadastrado é o ", hmaior, ", que tem ", id_hmaior, " anos\n")
		        
		    } 
		    
		    se (toth > 1) {
		        
		        escreva("O homem mais velho é o ", hmaior, ", que tem ", id_hmaior, " anos\n")
		        escreva("O homem mais jovem é o ", hmenor, ", que tem ", id_hmenor, " anos\n")
		        
		    }
	    }
	    
	}
}










