programa {
  inclua biblioteca Util --> u
  funcao inicio() {
    //NESTE EXEMPLO FOI ACRESCENTADO O CÁLCULO DA SOMA DOS VALORES DA LINHA E COLUNA ISOLADAS.
    
    inteiro valor[4][4]  //Variável Composta (MATRIZ)
    inteiro l  //índice das linhas da matriz
    inteiro c  //índice das colunas da matriz
    inteiro soma_linha2 = 0  //soma dos elementos da SEGUNDA LINHA da matriz
    inteiro soma_coluna3 = 0  //soma dos elementos da TERCEIRA COLUNA da matriz

    //Laço de preenchimento da MATRIZ
    para(l = 0; l < u.numero_linhas(valor); l++) {      
      para(c = 0; c < u.numero_colunas(valor); c++) {
        valor[l][c] = u.sorteia(1, 10)
      }                                  
    }

    //EXIBIÇÃO DA MATRIZ COMPLETA
    para(l = 0; l < u.numero_linhas(valor); l++) {      
      para(c = 0; c < u.numero_colunas(valor); c++) {
        escreva(valor[l][c], "  ")
        u.aguarde(300)    
      }
      escreva("\n")                                   
    }

    escreva("\n")

    //EXIBIÇÃO DA SEGUNDA LINHA DA MATRIZ 
    escreva("Os itens da segunda linha são: ")    
    para(c = 0; c < u.numero_colunas(valor); c++) {
      escreva(valor[1][c], "  ")
      soma_linha2 += valor[1][c]    //Cálculo da soma dos valores da linha isolada
      u.aguarde(300)                
    }

    escreva(" --> TOTAL = ", soma_linha2, "\n\n")

    //EXIBIÇÃO DA TERCEIRA COLUNA DA MATRIZ
    escreva("Os itens da terceira coluna são: ")
    para(l = 0; l < u.numero_linhas(valor); l++) {
      escreva(valor[l][2], " ")
      soma_coluna3 += valor[l][2]    //Cálculoda soma dos valores da coluna isolada
      u.aguarde(300)                
    }

    escreva(" --> TOTAL = ", soma_coluna3, "\n\n")
    
    escreva("FIM!\n")

  }
}
