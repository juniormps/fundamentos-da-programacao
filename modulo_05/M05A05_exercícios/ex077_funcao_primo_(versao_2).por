programa {
  //EXERC�CIO 077 - Fun��o Primo (vers�o 2.0)
  //Vers�o do professor Guanabara

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
    escreva("Digite um n�mero para saber se ele � primo: ")
    leia(num)

    se (primo(num)) {
      escreva("O n�mero ", num, " � primo!\n")
    } senao {
      escreva("O n�mero ", num, " n�o � primo!\n")
    }
  }
}
