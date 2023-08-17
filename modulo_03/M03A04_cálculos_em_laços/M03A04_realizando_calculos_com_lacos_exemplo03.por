programa {
    inclua biblioteca Tipos --> t
	funcao inicio() {
	    
		inteiro s, n, c, tot
		real m  //média aritmética dos números somados
		
		s = 0
		c = 1
		
		escreva("Quantos números você vai me informar? ")
		leia(tot)
		
		enquanto (c <= tot) {
		    
		    escreva("Digite um número: ")
		    leia(n)
		    
		    s += n  //mesma coisa que (s = s + n)
		    
		    c += 1  //mesma coisa que (c = c + 1)
		}
		
		m = t.inteiro_para_real(s) / tot
		
		escreva("A soma dos números digitados foi de ", s, "\n")
		escreva("E a média aritmética dos números foi de ", m, "\n")
	}
}
