programa {
  funcao cadeia parouimpar(inteiro n) {
    cadeia res
    se (n % 2 == 0) {
      res = "PAR"
    } senao {
      res = "�MPAR"
    }
    retorne res
  }
  funcao vazio inicio() {
    inteiro num
    escreva("Digite um n�mero inteiro: ")
    leia(num)
    cadeia tipo = parouimpar(num)
    escreva("O n�mero ", num, " � um valor ", tipo)
  }
}
