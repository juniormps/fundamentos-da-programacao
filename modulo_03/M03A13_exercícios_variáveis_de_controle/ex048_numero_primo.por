programa {
    inclua biblioteca Util --> u
	funcao inicio() {
		escreva("{ EXERC�CIO 048 - N�mero Primo }\n\n")
		
		//VARI�VEIS
		inteiro n, c, totdiv
		
		escreva("Digite um n�mero: ")
		leia(n)
		
		totdiv = 0
		
		escreva("\n")
		
		se (n > 0) {
		    para (c = 0; c <= n; c++) {
		        se (c > 0 e n % c == 0) {
		            escreva("[", c, "] ")
		            totdiv++
		        } senao {
		            escreva(c, " ")
		        }
		        u.aguarde(500)
		    }
		}
		
		se (n < 0) {
		    para (c = 0; c >= n; c--) {
		        se (c < 0 e n % c == 0) {
		            escreva("[", c, "] ")
		            totdiv++
		        } senao {
		            escreva(c, " ")
		        }
		        u.aguarde(500)
		    }
		}
		
		se (n == 0) {
		    escreva(n)
		}
		
		
		//RESULTADOS
		escreva("\n")
		
		se (n != 0) {
    		escreva("\nO n�mero ", n, " possui ", totdiv, " divisores.")
    		
    		se (totdiv > 2) {
    		    escreva("\nLogo, ele N�O � PRIMO!\n")
    		} senao {
    		    escreva("\nLogo, ele � PRIMO!\n")
    		}
		} senao {
		    escreva(
		        "\nO n�mero ZERO possui uma infinidade de divisores.",
    		    "\nLogo, ele � PRIMO!\n"
		    )
		}
		
	}
}
