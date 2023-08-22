programa {
    inclua biblioteca Texto --> txt
    inclua biblioteca Matematica --> mat
    inclua biblioteca Tipos --> t
	funcao inicio() {
	    escreva("{ EXERC�CIO 041 - Cadastro de Amigos }\n\n")
	    
	    //VARI�VEIS
		inteiro idade  //idade de cada amigo
		inteiro tot = 0  //total de amigos
		inteiro maiorid = 0  //maior idade
		inteiro menorid = 99999  //menor idade
		inteiro soma_id = 0  //soma de todas as idades
		real media_id = 0.0  //m�dia das idades de todos os amigos
		cadeia nome  //nome de cada amigo
		cadeia maisvelho = ""  //amigo mais velho
		cadeia maisjovem = ""  //amigo mais jovem
		
		enquanto (verdadeiro) {
		    
		    escreva("---------- NOVO AMIGO ----------\n",
		            "Nome: "
		    )
		    leia(nome)
		    
		    se (txt.caixa_alta(nome) == "ACABOU") {   //a fun��o Caixa Alta da biblioteca TEXTO ir� transformar a palavra chave para interrup��o em caixa alta.
		        
		        pare    //comando PARE
		        
		    } senao {
		        
		        escreva("Idade: ")
		        leia(idade)
		        escreva("\n")
		        
		        tot++   //esta express�o dar� o TOTAL de amigos
		        soma_id += idade   //esta express�o dar� a SOMA de todas as idades
		        
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
		
		media_id = t.inteiro_para_real(soma_id) / tot  //esta express�o dar� a M�DIA das idades
		
		escreva(
		    "\n******** INTERROMPIDO ********\n",
		    "========= RESULTADOS =========\n\n",
		    "Total de amigos cadastrados: ", tot, "\n",
		    "Seu amigo mais velho � o(a) ", maisvelho, " com ", maiorid, " anos\n",
		    "Seu amigo mais jovem � o(a) ", maisjovem, " com ", menorid, " anos\n",
		    "A m�dia de idade do grupo � de ", mat.arredondar(media_id, 2), " anos\n"
		)
	}
}
