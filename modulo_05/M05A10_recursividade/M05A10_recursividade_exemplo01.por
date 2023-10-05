programa {

  funcao inteiro produto(inteiro n, inteiro m) {
    se (n == 0 ou m == 0) {
      retorne 0
    } senao {
      retorne n + produto(n, m - 1)
    }
  }

  funcao inicio() {
    inteiro x = 3
    inteiro y = 4
    inteiro res = produto(x, y)
    escreva("O produto entre ", x, " e ", y, " é igual a ", res)
  }
}
