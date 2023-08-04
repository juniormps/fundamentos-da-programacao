programa {
    inclua biblioteca Matematica --> mat
	funcao inicio() {
		escreva("{ EXERCÍCIO  007 - Pintando uma parede }\n")
		escreva("Informação importante: um litro de tinta pinta 2m²\n")
		escreva("----------------------------------------------------\n")
		real largura
		real altura
		escreva("Largura da parede (em metros): ")
		leia(largura)
		escreva("Altura da parede (em metros): ")
		leia(altura)
		real area = mat.arredondar((largura*altura), 3) //área da parede arredondada em 3 casas decimais
		escreva("\nUma parede de " + largura + " x " + altura + " tem uma área de " + area + " m²\n")
		real quant_tinta = mat.arredondar((area / 2), 2)
		escreva("Precisaremos de " + quant_tinta + " litros de tinta.\n")
		
	}
}

/*
O programa também poderia ser escrito da maneira abaixo. 
Desta forma, ele otimizaria o uso de memória, pois a mesma terá menos variáveis para guardar


    programa {
        inclua biblioteca Matematica --> mat
    	funcao inicio() {
    		escreva("{ EXERCÍCIO  007 - Pintando uma parede }\n")
    		escreva("Informação importante: um litro de tinta pinta 2m²\n")
    		escreva("----------------------------------------------------\n")
    		real largura
    		real altura
    		escreva("Largura da parede (em metros): ")
    		leia(largura)
    		escreva("Altura da parede (em metros): ")
    		leia(altura)
    		escreva("\nUma parede de " + largura + " x " + altura + " tem uma área de " + largura*altura + " m²\n")
    		escreva("Precisaremos de " + mat.arredondar((largura*altura/2), 2) + " litros de tinta.\n")
    		
    	}
    }
    
*/
