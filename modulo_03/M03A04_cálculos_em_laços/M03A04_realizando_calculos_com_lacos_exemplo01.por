programa {
	funcao inicio() {
	    
		inteiro s, n, c
		
		s = 0
		c = 1
		
		enquanto (c <= 4) {
		    
		    escreva("Digite um número: ")
		    leia(n)
		    
		    s += n  //mesma coisa que (s = s + n)
		    
		    c += 1  //mesma coisa que (c = c + 1)
		}
		
		escreva("A soma foi de ", s)
	}
}
