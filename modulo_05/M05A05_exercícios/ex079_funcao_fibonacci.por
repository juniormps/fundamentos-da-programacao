programa {
  //EXERCÍCIO 079 - Função Fibonacci

  funcao cadeia fibonacci(inteiro total_termos) {
    cadeia sequencia = "0 -> 1 -> "
    inteiro p1, p2, p3
    p1 = 0
    p2 = 1
    para (inteiro c = 3; c <= total_termos; c++) {
      p3 = p1 + p2
      sequencia = sequencia + p3 + " -> "  //O símbolo "+" utilizado aqui é de CONCATENAÇÃO
      p1 = p2
      p2 = p3
    }
    retorne sequencia + "FIM!"
  }

  funcao inicio() {
    inteiro total_termos = 0
    escreva("Digite o número de termos que deseja na sequência Fibonacci: ")
    leia(total_termos)
    escreva(
      "Sequência Fibonacci: \n",
      fibonacci(total_termos)
    )  
   
  }
}
