programa {

  inteiro a = 5, b = 3   //Variáveis de escobo GLOBAL

  funcao teste(inteiro n1, inteiro n2) {    //n1, n2 e s são variáveis de escopo LOCAL
    inteiro s = 0
    n1++
    n2--
    s = n1 + n2
    escreva(s, " ")
  }

  funcao inicio() {
    teste(a, b)
    escreva(a, " ", b)
  }

}
