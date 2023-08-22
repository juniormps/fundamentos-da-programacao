programa {
    inclua biblioteca Texto --> txt
    inclua biblioteca Matematica --> mat
    inclua biblioteca Tipos --> t
	funcao inicio() {
	    escreva("{ EXERCÍCIO 041 - Cadastro de Amigos }\n\n")
	    
	    //VARIÁVEIS
		inteiro idade  //idade de cada amigo
		inteiro tot = 0  //total de amigos
		inteiro maiorid = 0  //maior idade
		inteiro menorid = 99999  //menor idade
		inteiro soma_id = 0  //soma de todas as idades
		real media_id = 0.0  //média das idades de todos os amigos
		cadeia nome  //nome de cada amigo
		cadeia maisvelho = ""  //amigo mais velho
		cadeia maisjovem = ""  //amigo mais jovem
		
		enquanto (verdadeiro) {
		    
		    escreva("---------- NOVO AMIGO ----------\n",
		            "Nome: "
		    )
		    leia(nome)
		    
		    se (txt.caixa_alta(nome) == "ACABOU") {   //a função Caixa Alta da biblioteca TEXTO irá transformar a palavra chave para interrupção em caixa alta.
		        
		        pare    //comando PARE
		        
		    } senao {
		        
		        escreva("Idade: ")
		        leia(idade)
		        escreva("\n")
		        
		        tot++   //esta expressão dará o TOTAL de amigos
		        soma_id += idade   //esta expressão dará a SOMA de todas as idades
		        
		        se (idade > maiorid) {
		            maiorid = idade
		            maisvelho = nome
		        }
		        
		        se (idade < menorid) {
		            menorid = idade
		            maisjovem = nome
		        }
		        
		    }
		    
		}
		
		media_id = t.inteiro_para_real(soma_id) / tot  //esta expressão dará a MÉDIA das idades
		
		escreva(
		    "\n******** INTERROMPIDO ********\n",
		    "========= RESULTADOS =========\n\n",
		    "Total de amigos cadastrados: ", tot, "\n",
		    "Seu amigo mais velho é o(a) ", maisvelho, " com ", maiorid, " anos\n",
		    "Seu amigo mais jovem é o(a) ", maisjovem, " com ", menorid, " anos\n",
		    "A média de idade do grupo é de ", mat.arredondar(media_id, 2), " anos\n"
		)
	}
}
