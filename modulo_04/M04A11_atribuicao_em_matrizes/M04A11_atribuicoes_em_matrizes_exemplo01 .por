programa {
  funcao inicio() {
    
    inteiro valor[3][3]  //Vari�vel Composta (MATRIZ)
    inteiro l  //�ndice das linhas da matriz
    inteiro c  //�ndice das colunas da matriz

    para(l = 0; l <3; l++) {
      para(c = 0; c < 3; c++) {
        valor[l][c] = 10     //Desta forma, a matriz ser� preenchida em todos
      }                      //em todos as posi��es com um valor FIXO, no caso, 10.
    }

    escreva(valor)

  }
}
