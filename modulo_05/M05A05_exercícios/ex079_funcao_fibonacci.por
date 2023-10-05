programa {
  //EXERC�CIO 079 - Fun��o Fibonacci

  funcao cadeia fibonacci(inteiro total_termos) {
    cadeia sequencia = "0 -> 1 -> "
    inteiro p1, p2, p3
    p1 = 0
    p2 = 1
    para (inteiro c = 3; c <= total_termos; c++) {
      p3 = p1 + p2
      sequencia = sequencia + p3 + " -> "  //O s�mbolo "+" utilizado aqui � de CONCATENA��O
      p1 = p2
      p2 = p3
    }
    retorne sequencia + "FIM!"
  }

  funcao inicio() {
    inteiro total_termos = 0
    escreva("Digite o n�mero de termos que deseja na sequ�ncia Fibonacci: ")
    leia(total_termos)
    escreva(
      "Sequ�ncia Fibonacci: \n",
      fibonacci(total_termos)
    )  
   
  }
}
