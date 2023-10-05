programa {
  //EXERCÍCIO 076 - Função Somador

  funcao inteiro somador(inteiro n1, inteiro n2) {
    retorne n1 + n2
  }

  funcao inicio() {
    inteiro n1, n2, soma

    escreva("Primeiro valor: ")
    leia(n1)
    escreva("Segundo valor: ")
    leia(n2)
    soma = somador(n1, n2)
    escreva("A soma dos dois valores é ", soma)
  }
}
