programa {
  funcao cadeia parouimpar(inteiro n) {
    
    se (n % 2 == 0) {
      retorne "PAR"
    } senao {
      retorne "ÍMPAR"
    }
  }
  
  funcao vazio inicio() {
    inteiro num
    escreva("Digite um número inteiro: ")
    leia(num)
    escreva("O número ", num, " é um valor ", parouimpar(num))
  }
}
