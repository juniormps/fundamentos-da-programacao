programa {
    inclua biblioteca Matematica --> mat
	funcao inicio() {
	    escreva("{ EXERCÍCIO 042 - Cadastro de Funcionários }\n\n")
	    
	    //VARIÁVEIS
	    inteiro totp, toth, totm, totm_acima, toth_acima
	    real sal, medsal_h, medsal_m, maiorsal_h, maiorsal_m, somasal_h, somasal_m
		cadeia nome  
		caracter sx, resp = 'S'
		
		totp = 0
		toth = 0
		totm = 0
		toth_acima = 0
		totm_acima = 0
		somasal_h = 0.0
		somasal_m = 0.0
		maiorsal_h = 0.0
		maiorsal_m = 0.0
		
		
		enquanto (resp == 'S' ou resp == 's') {
            escreva("---------- FUNCIONÁRIO ----------\n")
            
            escreva("Nome: ")
            leia(nome)
            
            escreva("Sexo[M/F]: ")
            leia(sx)
            
            escreva("Salário: ")
            leia(sal)
            
            //CÁLCULOS
            totp++
            
            se (sx == 'm' ou sx == 'M') {
                toth++
                somasal_h += sal
                
                se (sal > 1500.00) {
                    toth_acima++
                }
                
                se (sal > maiorsal_h) {
                    maiorsal_h = sal
                }
                
            } senao {
                totm++
                somasal_m += sal
                
                se (sal > 1500.00) {
                    totm_acima++
                }
                
                se (sal > maiorsal_m) {
                    maiorsal_m = sal
                }
            }
            //FIM DOS CÁLCULOS
            
            escreva("Quer continuar? [S/N] ")
            leia(resp)
            
            escreva("\n")
        
		}
		
		//CÁLCULOS
		medsal_h = mat.arredondar((somasal_h / toth), 2)
		medsal_m = mat.arredondar((somasal_m / totm), 2)
		//FIM DOS CÁLCULOS
		
		//RESULTADOS
		escreva("======== RESULTADOS ========")
	    escreva("\nTotal de pessoas cadastradas: ", totp)
	    escreva("\nTotal de homens: ", toth)
	    escreva("\ntotal de mulheres: ", totm)
	    escreva("\nMédia salarial dos homens: R$", medsal_h)
	    escreva("\nMédia salarial das mulheres: R$", medsal_m)
	    escreva("\nTotal de mulheres que ganham mais de R$1500,00: ", totm_acima)
	    escreva("\nTotal de homens que ganham mais de R$1500,00: ", toth_acima)
	    escreva("\nMaior salário entre os homens: R$", maiorsal_h)
	    escreva("\nMaior salário entre as mulheres: R$", maiorsal_m, "\n")
	}
}
