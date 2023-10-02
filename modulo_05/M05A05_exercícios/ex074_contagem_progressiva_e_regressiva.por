programa {
  //EXERCÍCIO 074 - Contagem Progressiva e Regressiva

  inclua biblioteca Util --> u

  funcao vazio contagem(inteiro comeco, inteiro fim, inteiro passo) {

    inteiro c

    escreva("----- CONTANDO DE ", comeco, " ATÉ ", fim, " -----\n")
    
    se (comeco > fim) {
      se (passo < 0) {
        passo = passo * (-1)
      }
      para(c = comeco; c >= fim; c -= passo) {
      escreva(c, " -> ")
      u.aguarde(300)
      }
    } senao {
      para(c = comeco; c <= fim; c += passo) {
      escreva(c, " -> ")
      u.aguarde(300)
      }
    }

    escreva("FIM!\n\n")
  }

  funcao inicio() {
   contagem(0, 10, 2)
   contagem(10, 58, 5)
   contagem(10, 1, 1)
   contagem(50, 0, -10)
  }

}
