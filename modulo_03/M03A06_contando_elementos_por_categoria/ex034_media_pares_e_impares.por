programa {
    inclua biblioteca Matematica --> m
    inclua biblioteca Tipos --> t
	funcao inicio() {
		escreva("{ EXERCÍCIO 034 - Média Pares e Ímpares }\n\n")
		
		inteiro n, c, sp, si, t_pares, t_impares  //nº digitado / contagem / soma dos pares / soma dos ímpares / total de pares / total de impares
		
		c = 1
		sp = 0
		si = 0
		t_pares = 0
		t_impares = 0
		
		enquanto (c <= 5) {
		    
		    escreva("Digite o " + c + "º valor: ")
		    leia(n)
		    
		    se (n % 2 == 0) {
		        sp = sp + n
		        t_pares++
		    } senao {
		        si = si + n
		        t_impares++
		    }
		    
		    c = c + 1
		}
		
		escreva("-----------------------------------------------\n")
		escreva("Você digitou ", t_pares, " números pares. A média é ", m.arredondar((t.inteiro_para_real(sp) / t_pares), 2), "\n")
		escreva("Você digitou ", t_impares, " números ímpares. A média é ", m.arredondar((t.inteiro_para_real(si) / t_impares), 2), "\n")
		
	}
}
