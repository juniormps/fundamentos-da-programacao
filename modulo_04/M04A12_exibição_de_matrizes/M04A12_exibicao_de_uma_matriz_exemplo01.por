programa {
  inclua biblioteca Util --> u
  funcao inicio() {
    
    inteiro valor[4][4]  //Vari�vel Composta (MATRIZ)
    inteiro l  //�ndice das linhas da matriz
    inteiro c  //�ndice das colunas da matriz

    //La�o de preenchimento da MATRIZ
    para(l = 0; l < u.numero_linhas(valor); l++) {      //As fun��es "numero_linhas" e "numero_colunas" funcionam semelhante � fun��o "numero_elemento" utilizada para vetores.
      para(c = 0; c < u.numero_colunas(valor); c++) {
        valor[l][c] = u.sorteia(1, 10)
      }                                  
    }

    //La�o para EXIBI��O da MATRIZ
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
