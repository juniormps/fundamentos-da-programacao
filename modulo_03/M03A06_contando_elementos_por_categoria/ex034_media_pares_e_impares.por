programa {
    inclua biblioteca Matematica --> m
    inclua biblioteca Tipos --> t
	funcao inicio() {
		escreva("{ EXERC�CIO 034 - M�dia Pares e �mpares }\n\n")
		
		inteiro n, c, sp, si, t_pares, t_impares  //n� digitado / contagem / soma dos pares / soma dos �mpares / total de pares / total de impares
		
		c = 1
		sp = 0
		si = 0
		t_pares = 0
		t_impares = 0
		
		enquanto (c <= 5) {
		    
		    escreva("Digite o " + c + "� valor: ")
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
		escreva("Voc� digitou ", t_pares, " n�meros pares. A m�dia � ", m.arredondar((t.inteiro_para_real(sp) / t_pares), 2), "\n")
		escreva("Voc� digitou ", t_impares, " n�meros �mpares. A m�dia � ", m.arredondar((t.inteiro_para_real(si) / t_impares), 2), "\n")
		
	}
}
