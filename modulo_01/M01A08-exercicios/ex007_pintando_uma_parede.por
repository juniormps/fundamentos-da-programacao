programa {
    inclua biblioteca Matematica --> mat
	funcao inicio() {
		escreva("{ EXERC�CIO  007 - Pintando uma parede }\n")
		escreva("Informa��o importante: um litro de tinta pinta 2m�\n")
		escreva("----------------------------------------------------\n")
		real largura
		real altura
		escreva("Largura da parede (em metros): ")
		leia(largura)
		escreva("Altura da parede (em metros): ")
		leia(altura)
		real area = mat.arredondar((largura*altura), 3) //�rea da parede arredondada em 3 casas decimais
		escreva("\nUma parede de " + largura + " x " + altura + " tem uma �rea de " + area + " m�\n")
		real quant_tinta = mat.arredondar((area / 2), 2)
		escreva("Precisaremos de " + quant_tinta + " litros de tinta.\n")
		
	}
}

/*
O programa tamb�m poderia ser escrito da maneira abaixo. 
Desta forma, ele otimizaria o uso de mem�ria, pois a mesma ter� menos vari�veis para guardar


    programa {
        inclua biblioteca Matematica --> mat
    	funcao inicio() {
    		escreva("{ EXERC�CIO  007 - Pintando uma parede }\n")
    		escreva("Informa��o importante: um litro de tinta pinta 2m�\n")
    		escreva("----------------------------------------------------\n")
    		real largura
    		real altura
    		escreva("Largura da parede (em metros): ")
    		leia(largura)
    		escreva("Altura da parede (em metros): ")
    		leia(altura)
    		escreva("\nUma parede de " + largura + " x " + altura + " tem uma �rea de " + largura*altura + " m�\n")
    		escreva("Precisaremos de " + mat.arredondar((largura*altura/2), 2) + " litros de tinta.\n")
    		
    	}
    }
    
*/
