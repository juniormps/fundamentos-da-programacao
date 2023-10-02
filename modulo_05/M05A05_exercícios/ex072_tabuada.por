programa {
  //EXERCÍCIO 072 - Tabuada

  funcao vazio tabuada(inteiro n) {
    escreva("----- TABUADA DE ", n, " -----\n")
    para (inteiro c = 0; c <=10; c++) {
      escreva(n, " x ", c, " = ", n*c, "\n")
    }
    escreva("---------------------\n")
  }

  funcao inicio() {
    inteiro num
    escreva("Quer ver a tabuada de qual número? ")
    leia(num)
    tabuada(num)
  }

}
