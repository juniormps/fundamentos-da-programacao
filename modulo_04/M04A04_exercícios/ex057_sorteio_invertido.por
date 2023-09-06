programa {
  inclua biblioteca Util --> u
  funcao inicio() {
    escreva("{ EXERCÍCIO 057 - Sorteio Invertido }\n\n")

    inteiro vet[10], posicao

    escreva("Vou sortear 10 valores... \n")

    para (posicao = 0; posicao < u.numero_elementos(vet); posicao++) {
      vet[posicao] = u.sorteia(1, 10)
      escreva(posicao, ":{", vet[posicao], "} ")
      u.aguarde(500)
    }
    
    escreva("\nMostrando a sequência invertida...\n")

    para (posicao = (u.numero_elementos(vet) - 1); posicao >= 0; posicao--) {
      escreva(posicao, ":{", vet[posicao], "} ")
      u.aguarde(500)
    }

    escreva("FIM\n")

  }
}
