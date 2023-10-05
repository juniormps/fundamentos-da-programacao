programa {
  //EXERCÍCIO 078 - Função Maior Valor

  inclua biblioteca Util --> u

  funcao inteiro maior(inteiro num[]) {
    inteiro maior_valor
    para (inteiro indice = 0; indice < u.numero_elementos(num); indice++) {
      se (indice == 0) {
        maior_valor = num[indice]
      } senao {
        se (num[indice] > maior_valor) {
          maior_valor = num[indice]
        }
      }
    }
    retorne maior_valor
  }

  funcao inicio() {
    inteiro num[] = {3, 7, 1, 4, 9, 6, 2}
    escreva("O maior valor que encontrei foi ", maior(num))
  }
}
