programa {
    inclua biblioteca Matematica --> m
	funcao inicio() {
	    escreva("{ EXERCÍCIO 028 - O preço por época }\n\n")
	    
	    inteiro num
	    real preco
	        
	    escreva("Digite o preço de um produto: R$")
	    leia(preco)
	   
	    escreva(
	        "\n\t\t\tESCOLHA UM PERÍODO\n",
            "\t\t================================\n",
            "\t\t(Opção 1) \t\tCarnaval [+10%]\n",
            "\t\t(Opção 2) \t\tFérias Escolares [+20%]\n",
            "\t\t(Opção 3) \t\tDia das Crianças [+5%]\n",
            "\t\t(Opção 4) \t\tBlack Friday [-30%]\n",
            "\t\t(Opção 5) \t\tNatal [-5%]\n",
            "\t\t================================\n",
            "\t\tDigite sua opção: => "
        )
        
        leia(num)
        
        escreva("--------------------------------------------\n")
        
        escolha (num) {
            caso 1:
                escreva("Na época do CARNAVAL, o preço do produto vai para R$" + m.arredondar((preco + preco * 10 / 100), 2))
                pare
            caso 2:
                escreva("Na época das FÉRIAS ESCOLARES, o preço do produto vai para R$" + m.arredondar((preco + preco * 20 / 100), 2))
                pare
            caso 3:
                escreva("Na época do DIA DAS CRIANÇAS, o preço do produto vai para R$" + m.arredondar((preco + preco * 5 / 100), 2))
                pare
            caso 4:
                escreva("Na época da BLACK FRIDAY, o preço do produto vai para R$" + m.arredondar((preco - preco * 30 / 100), 2))
                pare
            caso 5:
                escreva("Na época do NATAL, o preço do produto vai para R$" + m.arredondar((preco - preco * 5 / 100), 2))
                pare
            caso contrario:
                escreva("ERRO! Escolha uma opção entre 1 e 5")
                pare
        }
        
        escreva(
            "\n--------------------------------------------\n",
            "\t\t\tVOLTE SEMPRE\n"
        )
	}
}
