programa {
  inclua biblioteca Util --> u
  funcao inicio() {
    escreva("{ EXERCÍCIO 065 - Somador de Colunas (versão 3.0) }\n\n")

    //VARIÁVEIS
    inteiro tabela[4][4]  //matriz
    inteiro coluna_tab  //índice das colunas da matriz
    inteiro linha_tab  //índice das linhas da matriz
    inteiro soma_coluna[4] = {0, 0, 0, 0}  //soma dos elementos de cada coluna

    //PREENCHIMENTO DA MATRIZ
    escreva("A matriz gerada foi:\n\n")

    para (linha_tab = 0; linha_tab < u.numero_linhas(tabela); linha_tab++) {
      para (coluna_tab = 0; coluna_tab < u.numero_colunas(tabela); coluna_tab++) {
        tabela[linha_tab][coluna_tab] = u.sorteia(1, 10)
      }
    }

    //EXIBIÇÃO DA MATRIZ
    para (linha_tab = 0; linha_tab < u.numero_linhas(tabela); linha_tab++) {
      para (coluna_tab = 0; coluna_tab < u.numero_colunas(tabela); coluna_tab++) {
        escreva(tabela[linha_tab][coluna_tab], "\t\t")
        u.aguarde(300)
      }

      escreva("\n")
    }

    escreva("---------------------------------------\n")

    //CÁLCULOS DA SOMA DOS ELEMENTOS DE CADA COLUNA
    para (coluna_tab = 0; coluna_tab < u.numero_colunas(tabela); coluna_tab++) {
      para (linha_tab = 0; linha_tab < u.numero_linhas(tabela); linha_tab++) {
        soma_coluna[coluna_tab] += tabela[linha_tab][coluna_tab] 
      }
    }
    
    //EXIBIÇÃO DO RESULTADO DE CADA COLUNA 
    para (coluna_tab = 0; coluna_tab < u.numero_colunas(tabela); coluna_tab++) {
      escreva("Somando a ", (coluna_tab + 1), "º coluna: ")
      para (linha_tab = 0; linha_tab < u.numero_linhas(tabela); linha_tab++) {
        se (linha_tab < (u.numero_linhas(tabela) - 1)) {
          escreva(tabela[linha_tab][coluna_tab], " + ")
        } senao {
          escreva(tabela[linha_tab][coluna_tab], " = ")
        }
        u.aguarde(300)
      }
      escreva(soma_coluna[coluna_tab], "\n")
    }
    

    escreva("---------------------------------------\n")



  }
}
