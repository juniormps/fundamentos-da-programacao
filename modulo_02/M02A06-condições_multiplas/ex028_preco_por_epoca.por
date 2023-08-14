programa {
    inclua biblioteca Matematica --> m
	funcao inicio() {
	    escreva("{ EXERC�CIO 028 - O pre�o por �poca }\n\n")
	    
	    inteiro num
	    real preco
	        
	    escreva("Digite o pre�o de um produto: R$")
	    leia(preco)
	   
	    escreva(
	        "\n\t\t\tESCOLHA UM PER�ODO\n",
            "\t\t================================\n",
            "\t\t(Op��o 1) \t\tCarnaval [+10%]\n",
            "\t\t(Op��o 2) \t\tF�rias Escolares [+20%]\n",
            "\t\t(Op��o 3) \t\tDia das Crian�as [+5%]\n",
            "\t\t(Op��o 4) \t\tBlack Friday [-30%]\n",
            "\t\t(Op��o 5) \t\tNatal [-5%]\n",
            "\t\t================================\n",
            "\t\tDigite sua op��o: => "
        )
        
        leia(num)
        
        escreva("--------------------------------------------\n")
        
        escolha (num) {
            caso 1:
                escreva("Na �poca do CARNAVAL, o pre�o do produto vai para R$" + m.arredondar((preco + preco * 10 / 100), 2))
                pare
            caso 2:
                escreva("Na �poca das F�RIAS ESCOLARES, o pre�o do produto vai para R$" + m.arredondar((preco + preco * 20 / 100), 2))
                pare
            caso 3:
                escreva("Na �poca do DIA DAS CRIAN�AS, o pre�o do produto vai para R$" + m.arredondar((preco + preco * 5 / 100), 2))
                pare
            caso 4:
                escreva("Na �poca da BLACK FRIDAY, o pre�o do produto vai para R$" + m.arredondar((preco - preco * 30 / 100), 2))
                pare
            caso 5:
                escreva("Na �poca do NATAL, o pre�o do produto vai para R$" + m.arredondar((preco - preco * 5 / 100), 2))
                pare
            caso contrario:
                escreva("ERRO! Escolha uma op��o entre 1 e 5")
                pare
        }
        
        escreva(
            "\n--------------------------------------------\n",
            "\t\t\tVOLTE SEMPRE\n"
        )
	}
}
