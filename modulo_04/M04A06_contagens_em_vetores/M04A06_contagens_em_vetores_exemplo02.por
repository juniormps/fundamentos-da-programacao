programa {
  inclua biblioteca Util --> u
  funcao inicio() {
    inteiro vet[9], p, chave, tot

    tot = 0

    //PREENCHIMENTO DO VETOR
    para (p = 0; p < u.numero_elementos(vet); p++) {
      vet[p] = u.sorteia(1, 10)
    }

    //EXIBIÇÃO DO VETOR
    escreva("Os valores sorteados são: \n")

    para (p = 0; p < u.numero_elementos(vet); p++) {
      escreva(vet[p], " --> ")
      u.aguarde(400)
    }

    escreva("FIM\n")

    //BUSCA PELA CHAVE
    escreva("Está procurando por qual valor? ")
    leia(chave)
    escreva("Procurando pela chave ", chave, "...")
    u.aguarde(1000)

    para (p = 0; p < u.numero_elementos(vet); p++) {
      se (vet[p] == chave) {
        tot++
      }
    }

    //RESULTADO FINAL
    se (tot == 0) {
      escreva("O valor ", chave, " não foi encontrado dentro do vetor.\n")
    } senao {
      escreva("O valor ", chave, " foi encontrado ", tot, " vezes dentro do vetor.\n")
    }
  }
}
