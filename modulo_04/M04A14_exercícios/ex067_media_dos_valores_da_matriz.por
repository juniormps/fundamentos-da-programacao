programa {
  inclua biblioteca Matematica --> mat
  inclua biblioteca Tipos --> tip
  inclua biblioteca Util --> u
  funcao inicio() {
    escreva("{ EXERC�CIO 067 - M�dia dos Valores da Matriz }\n\n")

    //VARI�VEIS
    inteiro tabela[3][3]  //matriz
    inteiro linha_tab  //�ndice de linhas da matriz
    inteiro coluna_tab  //�ndice de colunas da matriz
    inteiro soma_valores = 0  //soma dos valores da matriz
    inteiro total_acima_linha2 = 0  //total de valores da segunda linha que s�o maiores ou iguais a m�dia
    inteiro total_abaixo_coluna3 = 0  //total de valores da terceira coluna que s�o menores ou iguais a m�dia
    real media_valores = 0.0  //m�dia dos valores da matriz

    //PREENCHIMENTO DA MATRIZ
    para (linha_tab = 0; linha_tab < u.numero_linhas(tabela); linha_tab++) {
      para (coluna_tab = 0; coluna_tab < u.numero_colunas(tabela); coluna_tab++) {
        tabela[linha_tab][coluna_tab] = u.sorteia(1, 10)
      }
    }

    //EXIBI��O DA MATRIZ
    para (linha_tab = 0; linha_tab < u.numero_linhas(tabela); linha_tab++) {
      para (coluna_tab = 0; coluna_tab < u.numero_colunas(tabela); coluna_tab++) {
        escreva(tabela[linha_tab][coluna_tab], "\t\t")
        u.aguarde(300)
      }
      escreva("\n")
    }

    //C�LCULO DA SOMA DOS VALORES DA MATRIZ
    para (linha_tab = 0; linha_tab < u.numero_linhas(tabela); linha_tab++) {
      para (coluna_tab = 0; coluna_tab < u.numero_colunas(tabela); coluna_tab++) {
        soma_valores += tabela[linha_tab][coluna_tab]
      }
    }

    //C�LCULO DA M�DIA DOS VALORES DA MATRIZ
    media_valores = tip.inteiro_para_real(soma_valores) / (u.numero_linhas(tabela) * u.numero_colunas(tabela))


    escreva(
      "----------------------------------------\n",
      "A m�dia dos valores gerados � ", mat.arredondar(media_valores, 2),
      "\n----------------------------------------\n"
    )

    //C�LCULO DOS VALORES IGUAIS OU MAIORES QUE A M�DIA NA SEGUNDA LINHA [1]
    escreva("Na segunda linha, os valores maiores ou iguais a m�dia s�o:\n")

    para (coluna_tab = 0; coluna_tab < u.numero_colunas(tabela); coluna_tab++) {
      se (tabela[1][coluna_tab] >= media_valores) {
        escreva("[1][", coluna_tab, "] = ", tabela[1][coluna_tab], "\n")
        total_acima_linha2++
        u.aguarde(300)
      }
    }

    escreva(
      "TOTAL = ", total_acima_linha2, " ocorr�ncia(s).\n",
      "----------------------------------------\n"
    )

    //C�LCULO DOS VALORES IGUAIS OU MENORES QUE A M�DIA NA TERCEIRA COLUNA
    escreva("Na terceira coluna, os valores manores ou iguais a m�dia s�o:\n")

    para (linha_tab = 0; linha_tab < u.numero_linhas(tabela); linha_tab++) {
      se (tabela[linha_tab][2] <= media_valores) {
        escreva("[", linha_tab, "][2] = ", tabela[linha_tab][2], "\n")
        total_abaixo_coluna3++
        u.aguarde(300)
      }
    }

    escreva(
      "TOTAL = ", total_abaixo_coluna3, " ocorr�ncia(s).\n",
      "----------------------------------------\n"
    )

  }
}
