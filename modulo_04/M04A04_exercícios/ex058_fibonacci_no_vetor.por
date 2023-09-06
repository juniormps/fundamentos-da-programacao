programa {
  inclua biblioteca Util --> u
  funcao inicio() {
    escreva("{ EXERCÍCIO 058 - Fibonacci no Vetor }\n\n")

    inteiro vet[15], posicao

    escreva("Os primeiros elementos de uma sequência Fibonacci são: \n")

    para (posicao = 0; posicao < u.numero_elementos(vet); posicao++) {
      se (posicao == 0) {
        vet[posicao] = 0
      } senao se (posicao == 1) {
        vet[posicao] = 1
      } senao {
        vet[posicao] = vet[posicao -1] + vet[posicao-2]
      }

      escreva("[", vet[posicao], "] ")
      u.aguarde(500)
    }
    
    escreva("FIM\n")

  }
}
