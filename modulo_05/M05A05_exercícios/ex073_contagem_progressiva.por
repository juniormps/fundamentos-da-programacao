programa {
  //EXERCÍCIO 073 - Contagem Progressiva

  inclua biblioteca Util --> u

  funcao vazio contagem(inteiro comeco, inteiro fim, inteiro passo) {
    escreva("----- CONTANDO DE ", comeco, " ATÉ ", fim, " -----\n")
    para(inteiro c = comeco; c <= fim; c += passo) {
      escreva(c, " -> ")
      u.aguarde(300)
    }
    escreva("FIM!\n\n")
  }

  funcao inicio() {
   contagem(0, 10, 2)
   contagem(10, 58, 5)
   contagem(5, 100, 10)
  }

}
