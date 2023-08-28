programa {
    inclua biblioteca Util --> u
	funcao inicio() {
		escreva("{ EXERCÍCIO 048 - Número Primo }\n\n")
		
		//VARIÁVEIS
		inteiro n, c, totdiv
		
		escreva("Digite um número: ")
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
    		escreva("\nO número ", n, " possui ", totdiv, " divisores.")
    		
    		se (totdiv > 2) {
    		    escreva("\nLogo, ele NÃO É PRIMO!\n")
    		} senao {
    		    escreva("\nLogo, ele É PRIMO!\n")
    		}
		} senao {
		    escreva(
		        "\nO número ZERO possui uma infinidade de divisores.",
    		    "\nLogo, ele É PRIMO!\n"
		    )
		}
		
	}
}
