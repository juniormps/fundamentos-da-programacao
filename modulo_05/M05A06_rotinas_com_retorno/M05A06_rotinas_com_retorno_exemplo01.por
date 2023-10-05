programa {
  funcao cadeia parouimpar(inteiro n) {
    cadeia res
    se (n % 2 == 0) {
      res = "PAR"
    } senao {
      res = "ÍMPAR"
    }
    retorne res
  }
  funcao vazio inicio() {
    inteiro num
    escreva("Digite um número inteiro: ")
    leia(num)
    cadeia tipo = parouimpar(num)
    escreva("O número ", num, " é um valor ", tipo)
  }
}
