programa {
  //EXERCÍCIO 070 - Quadrado

  inclua biblioteca Util --> u
  funcao vazio quadrado(inteiro tamanho) {
    para (inteiro quantidade = 1; quantidade <= tamanho; quantidade++) {
      para (inteiro dimensao = 1; dimensao <= tamanho; dimensao++) {
        escreva("[]")
      }
      escreva("\n")
    }

    escreva(tamanho, "x", tamanho, "\n\n")
    u.aguarde(300)
  }

  funcao inicio() {
    quadrado(4)
    quadrado(2)
    quadrado(5)
  }
}
