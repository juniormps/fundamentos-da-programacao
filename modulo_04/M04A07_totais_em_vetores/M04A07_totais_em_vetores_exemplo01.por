programa {
  inclua biblioteca Util --> u
  funcao inicio() {

    inteiro vet[9], p, soma = 0, chave

    //GERA NÚMEROS PARA O VETOR
    para (p = 0; p < u.numero_elementos(vet); p++) {
      vet[p] = u.sorteia(1, 40)
    }

    //MOSTRA O VETOR NA TELA
    escreva("O vetor gerado foi: \n")
    para (p = 0; p < u.numero_elementos(vet); p++) {
      escreva(vet[p], " --> ")
      u.aguarde(500)
    }

    escreva("FIM\n")

    escreva("Quer somar acima de qual valor? ")
    leia(chave)

    //RESULTADOS
    para (p = 0; p < u.numero_elementos(vet); p++) {
      se (vet[p] >= chave) {
        soma += vet[p]
      }
    }

    escreva("A soma de todos os valores maiores ou iguais a ", chave, " é igual a ", soma, "\n")

  }
}
