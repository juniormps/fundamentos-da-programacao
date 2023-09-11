programa {
  inclua biblioteca Util --> u
  funcao inicio() {
    inteiro num[8] = {2, 5, 7, 3, 6, 9, 4, 1}
    inteiro chave, p
    logico achei = falso

    escreva("Qual é a chave? ")
    leia(chave)

    para (p = 0; p < u.numero_elementos(num); p++) {
      se (num[p] == chave) {
        escreva("\nEncontrei a chave na posição ", p)
        achei = verdadeiro
        pare  //o comando "pare" geralmente é utilizado quando se sabe que não há repetição de valor nas posições do vetor ou quando se quer encontrar apenas a primeira posição com um determinado valor.
      }
    }

    se (nao (achei)) {  //a expressão poderia ser escrita tbm da seguinte forma: achei == falso
      escreva("Infelizmente a chave ", chave, " não se encontra no vetor.\n")
    }

  }
}
