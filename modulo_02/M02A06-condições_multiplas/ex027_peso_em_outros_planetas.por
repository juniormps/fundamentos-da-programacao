programa {
    inclua biblioteca Matematica --> m
	funcao inicio() {
	    
	    escreva("{ EXERC�CIO 027 - Seu peso nos planetas }\n\n")
	    
	    inteiro num  //op��es do menu
	    real pesot  //peso na Terra
	        
	    escreva("Qual � o seu peso aqui na Terra (em Kg): ")
	    leia(pesot)
	   
	    escreva(
	        "\n\t\t\tESCOLHA UM PLANETA\n",
            "\t\t==========================\n",
            "\t\t(Op��o 1) \t\tMerc�rio\n",
            "\t\t(Op��o 2) \t\tV�nus\n",
            "\t\t(Op��o 3) \t\tMarte\n",
            "\t\t(Op��o 4) \t\tJ�piter\n",
            "\t\t(Op��o 5) \t\tSaturno\n",
            "\t\t(Op��o 6) \t\tUrano\n",
            "\t\t==========================\n",
            "\t\tDigite sua op��o: => "
        )
        
        leia(num)
        
        escreva("--------------------------------------------\n")
        
        escolha (num) {
            caso 1:
                escreva("No planeta Merc�rio, seu peso seria " + m.arredondar((pesot*0.37), 2) + "Kg")
                pare
            caso 2:
                escreva("No planeta V�nus, seu peso seria " + m.arredondar((pesot*0.88), 2) + "Kg")
                pare
            caso 3:
                escreva("No planeta Marte, seu peso seria " + m.arredondar((pesot*0.38), 2) + "Kg")
                pare
            caso 4:
                escreva("No planeta J�piter, seu peso seria " + m.arredondar((pesot*2.64), 2) + "Kg")
                pare
            caso 5:
                escreva("No planeta Saturno, seu peso seria " + m.arredondar((pesot*1.15), 2) + "Kg")
                pare
            caso 6:
                escreva("No planeta Urano, seu peso seria " +m.arredondar((pesot*1.17), 2) + "Kg")
                pare    
            caso contrario:
                escreva("ERRO! Escolha uma op��o entre 1 e 6")
                pare
        }
        
        escreva(
            "\n--------------------------------------------\n",
            "\t\t\tVOLTE SEMPRE\n"
        )
	}
}
