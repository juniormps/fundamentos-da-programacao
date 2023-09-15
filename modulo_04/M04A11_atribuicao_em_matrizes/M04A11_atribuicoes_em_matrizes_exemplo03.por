programa {
  inclua biblioteca Util --> u
  funcao inicio() {
    
    inteiro valor[3][3]  //Variável Composta (MATRIZ)
    inteiro l  //índice das linhas da matriz
    inteiro c  //índice das colunas da matriz

    para(l = 0; l <3; l++) {
      para(c = 0; c < 3; c++) {
        escreva("Digite um valor da posição [", l, "][", c, "]: ")
        leia(valor[l][c])   //Desta forma, a matriz será preenchida em todas
      }                     //as posições com um valor inserido pelo usuário.
    }

  }
}
