programa {
  //EXEMPLO DE PREENCHIMENTO PULANDO UMA LINHA DA MATRIZ
  inclua biblioteca Util --> u
  funcao inicio() {
    
    inteiro valor[6][3]  //Vari�vel Composta (MATRIZ)
    inteiro l  //�ndice das linhas da matriz
    inteiro c  //�ndice das colunas da matriz

    para(l = 0; l < 6; l += 2) {     //NESTE EXEMPLO O LA�O IR� PULAR SEMPRE UMA LINHA DA MATRIZ, DEIXANDO ESTA LINHA PULADA EM BRANCO.
      para(c = 0; c < 3; c++) {
        escreva("Digite um valor da posi��o [", l, "][", c, "]: ")
        leia(valor[l][c])   //Desta forma, a matriz ser� preenchida em todas
      }                     //as posi��es com um valor inserido pelo usu�rio.
    }

  }
}
