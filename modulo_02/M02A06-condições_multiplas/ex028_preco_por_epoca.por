programa {
    inclua biblioteca Matematica --> m
	funcao inicio() {
	    escreva("{ EXERC�CIO 028 - O pre�o por �poca }\n\n")
	    
	    inteiro num  //op��es menu
	    real preco  //pre�o inicial do produto
	        
	    escreva("\t\tDigite o pre�o de um produto: R$")
	    leia(preco)
	   
	    escreva(
	        "\n\t\t\t\tESCOLHA UM PER�ODO\n",
            "\t\t======================================\n",
            "\t\t(Op��o 1) \t\tCarnaval [+10%]\n",
            "\t\t(Op��o 2) \t\tF�rias Escolares [+20%]\n",
            "\t\t(Op��o 3) \t\tDia das Crian�as [+5%]\n",
            "\t\t(Op��o 4) \t\tBlack Friday [-30%]\n",
            "\t\t(Op��o 5) \t\tNatal [-5%]\n",
            "\t\t======================================\n",
            "\t\t\tDigite sua op��o: => "
        )
        
        leia(num)
        
        escreva("\t\t-------------------------------------\n")
        
        escolha (num) {
            caso 1:
                escreva("\t\tNa �poca do CARNAVAL, o pre�o \n\t\tdo produto vai para R$" + m.arredondar((preco + preco * 10 / 100), 2))
                pare
            caso 2:
                escreva("\t\tNa �poca das F�RIAS ESCOLARES, o pre�o \n\t\tdo produto vai para R$" + m.arredondar((preco + preco * 20 / 100), 2))
                pare
            caso 3:
                escreva("\t\tNa �poca do DIA DAS CRIAN�AS, o pre�o \n\t\tdo produto vai para R$" + m.arredondar((preco + preco * 5 / 100), 2))
                pare
            caso 4:
                escreva("\t\tNa �poca da BLACK FRIDAY, o pre�o \n\t\tdo produto vai para R$" + m.arredondar((preco - preco * 30 / 100), 2))
                pare
            caso 5:
                escreva("\t\tNa �poca do NATAL, o pre�o \n\t\tdo produto vai para R$" + m.arredondar((preco - preco * 5 / 100), 2))
                pare
            caso contrario:
                escreva("\t\tERRO! Escolha uma op��o entre 1 e 5")
                pare
        }
        
        escreva(
            "\n\t\t-------------------------------------\n",
            "\t\t\t\t\tVOLTE SEMPRE\n"
        )
	}
}
