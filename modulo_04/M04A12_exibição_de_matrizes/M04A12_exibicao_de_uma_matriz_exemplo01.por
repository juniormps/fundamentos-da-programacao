programa {
  inclua biblioteca Util --> u
  funcao inicio() {
    
    inteiro valor[4][4]  //Variável Composta (MATRIZ)
    inteiro l  //índice das linhas da matriz
    inteiro c  //índice das colunas da matriz

    //Laço de preenchimento da MATRIZ
    para(l = 0; l < u.numero_linhas(valor); l++) {      //As funções "numero_linhas" e "numero_colunas" funcionam semelhante à função "numero_elemento" utilizada para vetores.
      para(c = 0; c < u.numero_colunas(valor); c++) {
        valor[l][c] = u.sorteia(1, 10)
      }                                  
    }

    //Laço para EXIBIÇÃO da MATRIZ
    //(poderia tbm ter sido feito junto com o de cima)
    para(l = 0; l < u.numero_linhas(valor); l++) {      
      para(c = 0; c < u.numero_colunas(valor); c++) {
        escreva(valor[l][c], "  ")
        u.aguarde(300)    
      }
      escreva("\n")                                   
    }
    
    escreva("\nFIM!\n")

  }
}
