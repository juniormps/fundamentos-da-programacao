programa {
  inclua biblioteca Matematica --> mat
  inclua biblioteca Tipos --> tip
  inclua biblioteca Util --> u
  funcao inicio() {
    escreva("{ EXERCÍCIO 067 - Média dos Valores da Matriz }\n\n")

    //VARIÁVEIS
    inteiro tabela[3][3]  //matriz
    inteiro linha_tab  //índice de linhas da matriz
    inteiro coluna_tab  //índice de colunas da matriz
    inteiro soma_valores = 0  //soma dos valores da matriz
    inteiro total_acima_linha2 = 0  //total de valores da segunda linha que são maiores ou iguais a média
    inteiro total_abaixo_coluna3 = 0  //total de valores da terceira coluna que são menores ou iguais a média
    real media_valores = 0.0  //média dos valores da matriz

    //PREENCHIMENTO DA MATRIZ
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

    //CÁLCULO DA SOMA DOS VALORES DA MATRIZ
    para (linha_tab = 0; linha_tab < u.numero_linhas(tabela); linha_tab++) {
      para (coluna_tab = 0; coluna_tab < u.numero_colunas(tabela); coluna_tab++) {
        soma_valores += tabela[linha_tab][coluna_tab]
      }
    }

    //CÁLCULO DA MÉDIA DOS VALORES DA MATRIZ
    media_valores = tip.inteiro_para_real(soma_valores) / (u.numero_linhas(tabela) * u.numero_colunas(tabela))


    escreva(
      "----------------------------------------\n",
      "A média dos valores gerados é ", mat.arredondar(media_valores, 2),
      "\n----------------------------------------\n"
    )

    //CÁLCULO DOS VALORES IGUAIS OU MAIORES QUE A MÉDIA NA SEGUNDA LINHA [1]
    escreva("Na segunda linha, os valores maiores ou iguais a média são:\n")

    para (coluna_tab = 0; coluna_tab < u.numero_colunas(tabela); coluna_tab++) {
      se (tabela[1][coluna_tab] >= media_valores) {
        escreva("[1][", coluna_tab, "] = ", tabela[1][coluna_tab], "\n")
        total_acima_linha2++
        u.aguarde(300)
      }
    }

    escreva(
      "TOTAL = ", total_acima_linha2, " ocorrência(s).\n",
      "----------------------------------------\n"
    )

    //CÁLCULO DOS VALORES IGUAIS OU MENORES QUE A MÉDIA NA TERCEIRA COLUNA
    escreva("Na terceira coluna, os valores manores ou iguais a média são:\n")

    para (linha_tab = 0; linha_tab < u.numero_linhas(tabela); linha_tab++) {
      se (tabela[linha_tab][2] <= media_valores) {
        escreva("[", linha_tab, "][2] = ", tabela[linha_tab][2], "\n")
        total_abaixo_coluna3++
        u.aguarde(300)
      }
    }

    escreva(
      "TOTAL = ", total_abaixo_coluna3, " ocorrência(s).\n",
      "----------------------------------------\n"
    )

  }
}
