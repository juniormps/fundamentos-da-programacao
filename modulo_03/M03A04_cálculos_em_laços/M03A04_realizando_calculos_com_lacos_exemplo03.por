programa {
    inclua biblioteca Tipos --> t
	funcao inicio() {
	    
		inteiro s, n, c, tot
		real m  //m�dia aritm�tica dos n�meros somados
		
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
		
		m = t.inteiro_para_real(s) / tot
		
		escreva("A soma dos n�meros digitados foi de ", s, "\n")
		escreva("E a m�dia aritm�tica dos n�meros foi de ", m, "\n")
	}
}
