programa {
  inclua biblioteca Util --> u
  funcao inicio() {
    escreva("{ EXERCÍCIO 066 - Maior Valor da Matriz }\n\n")

    //VARIÁVEIS
    inteiro tabela[3][3]  //matriz
    inteiro linha_tab  //índice de linhas da matriz
    inteiro coluna_tab  //índice de colunas da matriz
    inteiro maior_valor  //maior valor da matriz

    //PREENCHIMENTO DA MATRIZ
    para (linha_tab = 0; linha_tab < u.numero_linhas(tabela); linha_tab++) {
      para (coluna_tab = 0; coluna_tab < u.numero_colunas(tabela); coluna_tab++) {
        escreva("Digite um valor para a posição [", linha_tab, "][", coluna_tab, "]: ")
        leia(tabela[linha_tab][coluna_tab])
      }
    }

    escreva("\nProcurando pelo maior valor...\n")

    para (linha_tab = 0; linha_tab < u.numero_linhas(tabela); linha_tab++) {
      para (coluna_tab = 0; coluna_tab < u.numero_colunas(tabela); coluna_tab++) {
        escreva(tabela[linha_tab][coluna_tab], " -> ")
      }
    }

    escreva(
      "ANALISADO!\n",
      "----------------------------------------\n"
    )

    //CÁLCULO DO MAIOR VALOR DA MATRIZ
    para (linha_tab = 0; linha_tab < u.numero_linhas(tabela); linha_tab++) {
      para (coluna_tab = 0; coluna_tab < u.numero_colunas(tabela); coluna_tab++) {
        se (linha_tab == 0 e coluna_tab == 0) {
          maior_valor = tabela[linha_tab][coluna_tab]
        } senao {
          se(tabela[linha_tab][coluna_tab] > maior_valor) {
            maior_valor = tabela[linha_tab][coluna_tab] 
          }
        }
      }
    }

    escreva(
      "O maior valor envontrado foi o: ", maior_valor, "\n",
      "----------------------------------------\n",
      "O valor ", maior_valor, " foi encontrado nas seguintes posições:\n"
    )

    //POSIÇÕES DO MAIOR VALOR DA MATRIZ
    para (linha_tab = 0; linha_tab < u.numero_linhas(tabela); linha_tab++) {
      para (coluna_tab = 0; coluna_tab < u.numero_colunas(tabela); coluna_tab++) {
        se (tabela[linha_tab][coluna_tab] == maior_valor) {
          escreva("[", linha_tab, "][", coluna_tab, "] -> ")
        }
      }
    }

    escreva("FIM!\n")

  }
}
