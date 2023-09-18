programa {
  inclua biblioteca Util --> u
  funcao inicio() {
    escreva("{ EXERCÍCIO 065 - Somador de Colunas (versão 1.0) }\n\n")

    //VARIÁVEIS
    inteiro tabela[4][4]  //matriz
    inteiro coluna_tab  //índice das colunas da matriz
    inteiro linha_tab  //índice das linhas da matriz
    inteiro soma_coluna0 = 0  //soma dos elementos da primeira coluna --> índice = [0]
    inteiro soma_coluna1 = 0  //soma dos elementos da segunda coluna --> índice = [1]
    inteiro soma_coluna2 = 0  //soma dos elementos da terceira coluna --> índice = [2]
    inteiro soma_coluna3 = 0  //soma dos elementos da quarta coluna --> índice = [3]

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

    escreva("---------------------------------\n")

    //CÁLCULOS
    
    //SOMA DA PRIMEIRA COLUNA [0]
    escreva("Somando a primeira coluna: ")
    para (linha_tab = 0; linha_tab < u.numero_colunas(tabela); linha_tab++) {
      se (linha_tab < (u.numero_linhas(tabela) - 1)) {
        escreva(tabela[linha_tab][0], " + ")
        soma_coluna0 += tabela[linha_tab][0]
        u.aguarde(300)
      } senao {
        escreva(tabela[linha_tab][0], " = ")
        soma_coluna0 += tabela[linha_tab][0]
        u.aguarde(300)
      }
    }

    escreva(soma_coluna0, "\n")  //exibição do cálculo da soma dos números da coluna

    //SOMA DA SEGUNDA COLUNA [1]
    escreva("Somando a segunda coluna: ")
    para (linha_tab = 0; linha_tab < u.numero_colunas(tabela); linha_tab++) {
      se (linha_tab < (u.numero_linhas(tabela) - 1)) {
        escreva(tabela[linha_tab][1], " + ")
        soma_coluna1 += tabela[linha_tab][1]
        u.aguarde(300)
      } senao {
        escreva(tabela[linha_tab][1], " = ")
        soma_coluna1 += tabela[linha_tab][1]
        u.aguarde(300)
      }
    }

    escreva(soma_coluna1, "\n")  //exibição do cálculo da soma dos números da coluna

    //SOMA DA TERCEIRA COLUNA [2]
    escreva("Somando a terceira coluna: ")
    para (linha_tab = 0; linha_tab < u.numero_colunas(tabela); linha_tab++) {
      se (linha_tab < (u.numero_linhas(tabela) - 1)) {
        escreva(tabela[linha_tab][2], " + ")
        soma_coluna2 += tabela[linha_tab][2]
        u.aguarde(300)
      } senao {
        escreva(tabela[linha_tab][2], " = ")
        soma_coluna2 += tabela[linha_tab][2]
        u.aguarde(300)
      }
    }

    escreva(soma_coluna2, "\n")  //exibição do cálculo da soma dos números da coluna
    
    //SOMA DA QUARTA COLUNA [3]
    escreva("Somando a quarta coluna: ")
    para (linha_tab = 0; linha_tab < u.numero_colunas(tabela); linha_tab++) {
      se (linha_tab < (u.numero_linhas(tabela) - 1)) {
        escreva(tabela[linha_tab][3], " + ")
        soma_coluna3 += tabela[linha_tab][3]
        u.aguarde(300)
      } senao {
        escreva(tabela[linha_tab][3], " = ")
        soma_coluna3 += tabela[linha_tab][3]
        u.aguarde(300)
      }
    }

    escreva(soma_coluna3, "\n")  //exibição do cálculo da soma dos números da coluna
    

    escreva("---------------------------------\n")



  }
}
