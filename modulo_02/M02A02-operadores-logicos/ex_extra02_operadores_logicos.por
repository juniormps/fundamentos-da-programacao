programa {
	funcao inicio() {
	    inteiro a = 5, b = 8, c = 10, d = 2
		logico k = (a<a*2) e (d<c-b) 
		logico x = (a>b) ou nao (c%2==0)
		logico y = x ou nao (c<a+b/d)
		logico z = nao x e falso ou (d+a<=b+d)
		/*
		    Calculando:
		
		    inteiro a = 5, b = 8, c = 10, d = 2
		
		    logico k = (5<10) e (2<2)
		           k = (v) e (f) 
		           k = (f)
		
		    logico x = (a>b) ou nao (c%2==0)
		           x = (f) ou nao (0==0)
		           x = (f) ou nao (v)
		           x = (f) ou (f)
		           x = (f)
		
		    logico y = x ou nao (c<a+b/d)
		           y = (f) ou nao (c<9)
		           y = (f) ou nao (f)
		           y = (f) ou (v)
		           y = (v)
		
	        logico z = nao x e falso ou (d+a<=b+d)
		           z = nao (f) e (f) ou (7<=10)
		           z = (v) e (f) ou (v)
		           z = (f) ou (v)
		           z = (v)
		
		*/
		
		escreva("\n" + k + "\n" + x + "\n" + y + "\n" + z + "\n")
	}
}
