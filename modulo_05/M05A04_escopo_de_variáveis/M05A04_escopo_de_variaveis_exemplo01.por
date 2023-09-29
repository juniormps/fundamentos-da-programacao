programa {
  //Neste exemplo, temos apenas variáveis de escopo local
  funcao teste(inteiro n1, inteiro n2) {
    inteiro s = 0
    n1++
    n2--
    s = n1 + n2
    escreva(s, " ")
  }

  funcao inicio() {
    inteiro a = 5, b = 3
    teste(a, b)
    escreva(a, " ", b)
  }

}
