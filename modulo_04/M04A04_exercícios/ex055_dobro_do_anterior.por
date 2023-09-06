programa {
  inclua biblioteca Util --> u
  funcao inicio() {
    escreva("{ EXERCÍCIO 055 - O Dobro do Anterior }\n\n")

    inteiro num[10], posicao

    para (posicao = 0; posicao < u.numero_elementos(num); posicao++) {
      se (posicao == 0) {
        num[posicao] = 3
      } senao {
        num[posicao] = 2 * num[posicao - 1]
      }
    }

    escreva("O vetor foi gerado com os seguintes valores:\n")

    para (posicao = 0; posicao < u.numero_elementos(num); posicao++) {
      escreva(posicao, ":{", num[posicao], "} ")
      u.aguarde(500)
    }

    escreva("FIM\n")

  }
}
