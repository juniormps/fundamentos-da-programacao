programa {
    inclua biblioteca Matematica --> mat
	funcao inicio() {
	    escreva("{ EXERC�CIO 042 - Cadastro de Funcion�rios }\n\n")
	    
	    //VARI�VEIS
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
            escreva("---------- FUNCION�RIO ----------\n")
            
            escreva("Nome: ")
            leia(nome)
            
            escreva("Sexo[M/F]: ")
            leia(sx)
            
            escreva("Sal�rio: ")
            leia(sal)
            
            //C�LCULOS
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
            //FIM DOS C�LCULOS
            
            escreva("Quer continuar? [S/N] ")
            leia(resp)
            
            escreva("\n")
        
		}
		
		//C�LCULOS
		medsal_h = mat.arredondar((somasal_h / toth), 2)
		medsal_m = mat.arredondar((somasal_m / totm), 2)
		//FIM DOS C�LCULOS
		
		//RESULTADOS
		escreva("======== RESULTADOS ========")
	    escreva("\nTotal de pessoas cadastradas: ", totp)
	    escreva("\nTotal de homens: ", toth)
	    escreva("\ntotal de mulheres: ", totm)
	    escreva("\nM�dia salarial dos homens: R$", medsal_h)
	    escreva("\nM�dia salarial das mulheres: R$", medsal_m)
	    escreva("\nTotal de mulheres que ganham mais de R$1500,00: ", totm_acima)
	    escreva("\nTotal de homens que ganham mais de R$1500,00: ", toth_acima)
	    escreva("\nMaior sal�rio entre os homens: R$", maiorsal_h)
	    escreva("\nMaior sal�rio entre as mulheres: R$", maiorsal_m, "\n")
	}
}
