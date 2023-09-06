programa {
  inclua biblioteca Util --> u
  funcao inicio() {
    escreva("{ EXERCÍCIO 056 - Vetor com contagem de 5 em 5 }\n\n")

    inteiro num, vet[10], posicao

    escreva("Digite um valor: ")
    leia(num)

    para (posicao = 0; posicao < u.numero_elementos(vet); posicao++) {
      se (posicao == 0) {
        vet[posicao] = num
      } senao {
        vet[posicao] = vet[posicao - 1] + 5
      }
    }

    escreva("O vetor foi gerado com os seguintes valores:\n")

    para (posicao = 0; posicao < u.numero_elementos(vet); posicao++) {
      escreva(posicao, ":{", vet[posicao], "} ")
      u.aguarde(500)
    }

    escreva("FIM\n")

  }
}
