programa {
  inclua biblioteca Util --> u
  funcao inicio() {
    escreva("{ EXERC�CIO 058 - Fibonacci no Vetor }\n\n")

    inteiro vet[15], posicao

    escreva("Os primeiros elementos de uma sequ�ncia Fibonacci s�o: \n")

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
