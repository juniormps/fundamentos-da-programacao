programa {
  inclua biblioteca Util --> u
  funcao inicio() {
    
    inteiro valor[3][3]  //Vari�vel Composta (MATRIZ)
    inteiro l  //�ndice das linhas da matriz
    inteiro c  //�ndice das colunas da matriz

    para(l = 0; l <3; l++) {
      para(c = 0; c < 3; c++) {
        escreva("Digite um valor da posi��o [", l, "][", c, "]: ")
        leia(valor[l][c])   //Desta forma, a matriz ser� preenchida em todas
      }                     //as posi��es com um valor inserido pelo usu�rio.
    }

  }
}
