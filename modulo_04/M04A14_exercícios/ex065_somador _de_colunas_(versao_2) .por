programa {
  inclua biblioteca Util --> u
  funcao inicio() {
    escreva("{ EXERCÍCIO 064 - Somador de Colunas (versão 2.0)}\n\n")
    //Nesta versão, foi feito apenas dois laços: um para preencher e exibir a matriz
    //e outro para calcular e exibir a soma dos valores de cada coluna 

    //VARIÁVEIS
    inteiro tabela[4][4]  //matriz
    inteiro coluna_tab  //índice das colunas da matriz
    inteiro linha_tab  //índice das linhas da matriz
    inteiro soma_coluna[4] = {0, 0, 0, 0}  //soma dos elementos dE cada coluna da matriz

    escreva("A matriz gerada foi:\n\n")

    //LAÇO DE PREENCHIMENTO E EXIBIÇÃO DA MATRIZ
    para (linha_tab = 0; linha_tab < u.numero_linhas(tabela); linha_tab++) {
      para (coluna_tab = 0; coluna_tab < u.numero_colunas(tabela); coluna_tab++) {
        tabela[linha_tab][coluna_tab] = u.sorteia(1, 10)  //Preenchimento da matriz
        escreva(tabela[linha_tab][coluna_tab], "\t\t")  //exibição dos valores da matriz
        u.aguarde(300)
      }
      escreva("\n")
    }

    escreva("---------------------------------------\n")

    //LAÇO DE CÁLCULO DA SOMA DOS VALORES DE CADA COLUNA
    para (coluna_tab = 0; coluna_tab < u.numero_colunas(tabela); coluna_tab++) {

      escreva("Somando a coluna ", (coluna_tab + 1), ": ")

      para (linha_tab = 0; linha_tab < u.numero_linhas(tabela); linha_tab++) {

        se (linha_tab < (u.numero_linhas(tabela) - 1)) {
          escreva(tabela[linha_tab][coluna_tab], " + ")
        } senao {
          escreva(tabela[linha_tab][coluna_tab], " = ")
        }
      
        soma_coluna[coluna_tab] += tabela[linha_tab][coluna_tab]
        u.aguarde(300)
      }

      escreva(soma_coluna[coluna_tab], "\n")
    }

    escreva("---------------------------------------\n")

  }
}
