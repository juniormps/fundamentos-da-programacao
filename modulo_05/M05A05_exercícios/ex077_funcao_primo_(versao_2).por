programa {
  //EXERCÍCIO 077 - Função Primo (versão 2.0)
  //Versão do professor Guanabara

  funcao logico primo(inteiro num) {

    logico e_primo = verdadeiro

    para (inteiro c = 2; c < num; c++) {
      se (num % c == 0) {
        e_primo = falso
        pare
      }
    }

    retorne e_primo
  }
  
  funcao inicio() {
    inteiro num
    escreva("Digite um número para saber se ele é primo: ")
    leia(num)

    se (primo(num)) {
      escreva("O número ", num, " é primo!\n")
    } senao {
      escreva("O número ", num, " não é primo!\n")
    }
  }
}
