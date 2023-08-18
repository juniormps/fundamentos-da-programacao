programa {
    inclua biblioteca Texto --> tx
	funcao inicio() {
		
		inteiro c, meninos, meninas
		caracter sx
		
		c = 1
		meninos = 0
		meninas = 0
		
		enquanto (c <= 5) {
		    
		    escreva("Digite o sexo: [M/F] ")
		    leia(sx)
		    
		    se (sx == 'M' ou sx == 'm') {
		        meninos++
		    }
		    se (sx == 'F' ou sx == 'f') {
		        meninas++
		    }
		    
		    c++
		}
		
		escreva("O total de meninos é ", meninos, "\n")
		escreva("O total de meninas é ", meninas, "\n")
	}
}
