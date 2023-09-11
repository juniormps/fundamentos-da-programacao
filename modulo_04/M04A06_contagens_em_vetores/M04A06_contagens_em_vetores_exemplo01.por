programa {
  inclua biblioteca Util --> u
  funcao inicio() {
    inteiro vet[9], p, chave, tot

    tot = 0

    para (p = 0; p < u.numero_elementos(vet); p++) {
      vet[p] = u.sorteia(1, 10)
    }

    escreva("Os valores sorteados são: \n")

    para (p = 0; p < u.numero_elementos(vet); p++) {
      escreva(vet[p], " --> ")
      u.aguarde(400)
    }

    escreva("FIM\n")

    escreva("Está procurando por qual valor? ")
    leia(chave)
    escreva("Procurando pela chave ", chave, "...")
    u.aguarde(1000)

    para (p = 0; p < u.numero_elementos(vet); p++) {
      se (vet[p] == chave) {
        tot++
      }
    }

    escreva("O valor ", chave, " foi encontrado ", tot, " vezes dentro do vetor.\n")

  }
}
