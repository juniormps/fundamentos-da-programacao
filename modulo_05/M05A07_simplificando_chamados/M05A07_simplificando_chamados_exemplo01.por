programa {
  funcao cadeia parouimpar(inteiro n) {
    
    se (n % 2 == 0) {
      retorne "PAR"
    } senao {
      retorne "�MPAR"
    }
  }
  
  funcao vazio inicio() {
    inteiro num
    escreva("Digite um n�mero inteiro: ")
    leia(num)
    escreva("O n�mero ", num, " � um valor ", parouimpar(num))
  }
}
