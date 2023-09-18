programa {
  inclua biblioteca Util --> u
  funcao inicio() {
    escreva("{ EXERC�CIO 064 - Somador de Linhas }\n\n")

    //VARI�VEIS
    inteiro tabela[4][4]  //matriz
    inteiro coluna_tab  //�ndice das colunas da matriz
    inteiro linha_tab  //�ndice das linhas da matriz
    inteiro soma_linha0 = 0  //soma dos elementos da primeira linha --> �ndice = [0]
    inteiro soma_linha1 = 0  //soma dos elementos da segunda linha --> �ndice = [1]
    inteiro soma_linha2 = 0  //soma dos elementos da terceira linha --> �ndice = [2]
    inteiro soma_linha3 = 0  //soma dos elementos da quarta linha --> �ndice = [3]

    //PREENCHIMENTO DA MATRIZ
    escreva("A matriz gerada foi:\n\n")

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

    escreva("---------------------------------\n")

    //C�LCULOS
    
    //SOMA DA PRIMEIRA LINHA [0]
    escreva("Somando a primeira linha: ")
    para (coluna_tab = 0; coluna_tab < u.numero_colunas(tabela); coluna_tab++) {
      se (coluna_tab < (u.numero_colunas(tabela) - 1)) {
        escreva(tabela[0][coluna_tab], " + ")
        soma_linha0 += tabela[0][coluna_tab]
        u.aguarde(300)
      } senao {
        escreva(tabela[0][coluna_tab], " = ")
        soma_linha0 += tabela[0][coluna_tab]
        u.aguarde(300)
      }
    }

    escreva(soma_linha0, "\n")  //exibi��o do c�lculo da soma dos n�meros da linha

    //SOMA DA SEGUNDA LINHA [1]
    escreva("Somando a segunda linha: ")
    para (coluna_tab = 0; coluna_tab < u.numero_colunas(tabela); coluna_tab++) {
      se (coluna_tab < (u.numero_colunas(tabela) - 1)) {
        escreva(tabela[1][coluna_tab], " + ")
        soma_linha1 += tabela[1][coluna_tab]
        u.aguarde(300)
      } senao {
        escreva(tabela[1][coluna_tab], " = ")
        soma_linha1 += tabela[1][coluna_tab]
        u.aguarde(300)
      }
    }

    escreva(soma_linha1, "\n")  //exibi��o do c�lculo da soma dos n�meros da linha

    //SOMA DA TERCEIRA LINHA [2]
    escreva("Somando a terceira linha: ")
    para (coluna_tab = 0; coluna_tab < u.numero_colunas(tabela); coluna_tab++) {
      se (coluna_tab < (u.numero_colunas(tabela) - 1)) {
        escreva(tabela[2][coluna_tab], " + ")
        soma_linha2 += tabela[2][coluna_tab]
        u.aguarde(300)
      } senao {
        escreva(tabela[2][coluna_tab], " = ")
        soma_linha2 += tabela[2][coluna_tab]
        u.aguarde(300)
      }
    }

    escreva(soma_linha2, "\n")  //exibi��o do c�lculo da soma dos n�meros da linha
    
    //SOMA DA QUARTA LINHA [3]
    escreva("Somando a quarta linha: ")
    para (coluna_tab = 0; coluna_tab < u.numero_colunas(tabela); coluna_tab++) {
      se (coluna_tab < (u.numero_colunas(tabela) - 1)) {
        escreva(tabela[3][coluna_tab], " + ")
        soma_linha3 += tabela[3][coluna_tab]
        u.aguarde(300)
      } senao {
        escreva(tabela[3][coluna_tab], " = ")
        soma_linha3 += tabela[3][coluna_tab]
        u.aguarde(300)
      }
    }

    escreva(soma_linha3, "\n")  //exibi��o do c�lculo da soma dos n�meros da linha
    

    escreva("---------------------------------\n")



  }
}
