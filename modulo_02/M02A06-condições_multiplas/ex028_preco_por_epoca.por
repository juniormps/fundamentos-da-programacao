programa {
    inclua biblioteca Matematica --> m
	funcao inicio() {
	    escreva("{ EXERCÍCIO 028 - O preço por época }\n\n")
	    
	    inteiro num  //opções menu
	    real preco  //preço inicial do produto
	        
	    escreva("\t\tDigite o preço de um produto: R$")
	    leia(preco)
	   
	    escreva(
	        "\n\t\t\t\tESCOLHA UM PERÍODO\n",
            "\t\t======================================\n",
            "\t\t(Opção 1) \t\tCarnaval [+10%]\n",
            "\t\t(Opção 2) \t\tFérias Escolares [+20%]\n",
            "\t\t(Opção 3) \t\tDia das Crianças [+5%]\n",
            "\t\t(Opção 4) \t\tBlack Friday [-30%]\n",
            "\t\t(Opção 5) \t\tNatal [-5%]\n",
            "\t\t======================================\n",
            "\t\t\tDigite sua opção: => "
        )
        
        leia(num)
        
        escreva("\t\t-------------------------------------\n")
        
        escolha (num) {
            caso 1:
                escreva("\t\tNa época do CARNAVAL, o preço \n\t\tdo produto vai para R$" + m.arredondar((preco + preco * 10 / 100), 2))
                pare
            caso 2:
                escreva("\t\tNa época das FÉRIAS ESCOLARES, o preço \n\t\tdo produto vai para R$" + m.arredondar((preco + preco * 20 / 100), 2))
                pare
            caso 3:
                escreva("\t\tNa época do DIA DAS CRIANÇAS, o preço \n\t\tdo produto vai para R$" + m.arredondar((preco + preco * 5 / 100), 2))
                pare
            caso 4:
                escreva("\t\tNa época da BLACK FRIDAY, o preço \n\t\tdo produto vai para R$" + m.arredondar((preco - preco * 30 / 100), 2))
                pare
            caso 5:
                escreva("\t\tNa época do NATAL, o preço \n\t\tdo produto vai para R$" + m.arredondar((preco - preco * 5 / 100), 2))
                pare
            caso contrario:
                escreva("\t\tERRO! Escolha uma opção entre 1 e 5")
                pare
        }
        
        escreva(
            "\n\t\t-------------------------------------\n",
            "\t\t\t\t\tVOLTE SEMPRE\n"
        )
	}
}
