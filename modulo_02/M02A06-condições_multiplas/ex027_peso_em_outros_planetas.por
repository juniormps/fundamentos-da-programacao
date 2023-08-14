programa {
    inclua biblioteca Matematica --> m
	funcao inicio() {
	    
	    inteiro num
	    real pesot
	    
	    escreva("{ EXERCÍCIO 027 - Seu peso nos planetas }\n\n")
	        
	   escreva("Qual é o seu peso aqui na Terra (em Kg): ")
	   leia(pesot)
	   
	   escreva(
	        "\n\t\t\tESCOLHA UM PLANETA\n",
            "\t\t==========================\n",
            "\t\t(Opção 1) \t\tMercúrio\n",
            "\t\t(Opção 2) \t\tVênus\n",
            "\t\t(Opção 3) \t\tMarte\n",
            "\t\t(Opção 4) \t\tJúpiter\n",
            "\t\t(Opção 5) \t\tSaturno\n",
            "\t\t(Opção 6) \t\tUrano\n",
            "\t\t==========================\n",
            "\t\tDigite sua opção: => "
        )
        
        leia(num)
        
        escreva("--------------------------------------------\n")
        
        escolha (num) {
            caso 1:
                escreva("No planeta Mercúrio, seu peso seria " + m.arredondar((pesot*0.37), 2) + "Kg")
                pare
            caso 2:
                escreva("No planeta Vênus, seu peso seria " + m.arredondar((pesot*0.88), 2) + "Kg")
                pare
            caso 3:
                escreva("No planeta Marte, seu peso seria " + m.arredondar((pesot*0.38), 2) + "Kg")
                pare
            caso 4:
                escreva("No planeta Júpiter, seu peso seria " + m.arredondar((pesot*2.64), 2) + "Kg")
                pare
            caso 5:
                escreva("No planeta Saturno, seu peso seria " + m.arredondar((pesot*1.15), 2) + "Kg")
                pare
            caso 6:
                escreva("No planeta Urano, seu peso seria " +m.arredondar((pesot*1.17), 2) + "Kg")
                pare    
            caso contrario:
                escreva("ERRO! Escolha uma opção entre 1 e 4")
                pare
        }
        
        escreva(
            "\n--------------------------------------------\n",
            "\t\t\tVOLTE SEMPRE\n"
        )
	}
}
