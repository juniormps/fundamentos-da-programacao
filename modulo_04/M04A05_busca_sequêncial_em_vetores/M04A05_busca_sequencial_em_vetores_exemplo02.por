programa {
  inclua biblioteca Util --> u
  funcao inicio() {
    inteiro num[8] = {2, 5, 7, 3, 2, 9, 4, 2}
    inteiro chave, p
    logico achei = falso

    escreva("Qual � a chave? ")
    leia(chave)

    para (p = 0; p < u.numero_elementos(num); p++) {
      se (num[p] == chave) {
        escreva("\nEncontrei a chave na posi��o ", p)
        achei = verdadeiro
      }
    }

    se (nao (achei)) {  //a express�o poderia ser escrita tbm da seguinte forma: achei == falso
      escreva("Infelizmente a chave ", chave, " n�o se encontra no vetor.\n")
    }

  }
}
