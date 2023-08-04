programa {
	funcao inicio() {
	    inteiro a = 3, b = 5
		logico x = (a<b) ou (b<a*2) e nao (b>a)
		/*
		    Calculando x:
		
		    logico x = (a<b) ou (b<a*2) e nao (b>a)
		           x = (a<b) ou (b<6) e nao (b>a)
		           x = (V) ou (V) e nao (V)
		           x = (V) ou (V) e (F)
		           x = (V) ou (F)
		           x = (V)
		
		*/
		escreva(x)
	}
}
