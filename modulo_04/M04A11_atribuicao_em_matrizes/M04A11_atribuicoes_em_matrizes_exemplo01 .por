programa {
  funcao inicio() {
    
    inteiro valor[3][3]  //Variável Composta (MATRIZ)
    inteiro l  //índice das linhas da matriz
    inteiro c  //índice das colunas da matriz

    para(l = 0; l <3; l++) {
      para(c = 0; c < 3; c++) {
        valor[l][c] = 10     //Desta forma, a matriz será preenchida em todos
      }                      //em todos as posições com um valor FIXO, no caso, 10.
    }

    escreva(valor)

  }
}
