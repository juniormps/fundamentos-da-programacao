programa {
	funcao inicio() {
	    
		inteiro s, n, c, tot
		
		s = 0
		c = 1
		
		escreva("Quantos n�meros voc� vai me informar? ")
		leia(tot)
		
		enquanto (c <= tot) {
		    
		    escreva("Digite um n�mero: ")
		    leia(n)
		    
		    s += n  //mesma coisa que (s = s + n)
		    
		    c += 1  //mesma coisa que (c = c + 1)
		}
		
		escreva("A soma foi de ", s)
	}
}
