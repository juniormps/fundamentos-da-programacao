programa {
	funcao inicio() {
		escreva("{ EXERC�CIO 044 - N�meros Sorteados }\n\n")
		
		//VARI�VEIS
		inteiro n, tot, soma, maior, menor, tot_cinco
		caracter resp
		
		tot = 0  //total de n�meros sorteados
		soma = 0  //soma dos valores sorteados
		maior = 0  //maior valor sorteado
		menor = 10  //menor valor sorteado
		tot_cinco = 0  //total de vezes que o n�mero 5 foi sorteado
		
		escreva(
		    "Vou sortear v�rios n�meros!",
		    "\n----------------------------------------\n"
	    )
	    
	    faca {
	        
    	    n = sorteia(0, 10)
    	    
    	    //IN�CIO DOS C�LCULOS
    	    tot++
    	    
    	    soma += n
    	    
    	    se (n > maior) {
    	        maior = n
    	    }
    	    
    	    se (n < menor) {
    	        menor = n
    	    }
    	    
    	    se (n == 5) {
    	        tot_cinco++
    	    }
    	    //FIM DOS C�LCULOS
    	    
    	    escreva(
    	        "O ", tot, "� valor sorteado foi ", n,
    	        "\nQuer sortear mais um? [S/N] "
    	    )
    	    
    	    leia(resp)
    	    
    	    escreva("\n")
    	    
	    } enquanto (resp == 's' ou resp == 'S')
	    
	    //RESULTADOS
	    escreva(
	        "=========================================",
            "\n\nVoc� me fez sortear ", tot, " valores",
            "\nA soma de todos eles foi igual a ", soma,
            "\nO maior valor foi ", maior, " e o menor foi ", menor,
            "\nO valor 5 foi sorteado ", tot_cinco, " vezes\n"
        )
		
	}
}









