programa {
  //EXERC�CIO 077 - Fun��o Primo

  funcao logico primo(inteiro num) {
    inteiro total_divisores = 0
    se (num <= 1) {   //Se o n�mero for menor ou igual a 1, ele j� � descartado, pois n�meros menores ou iguais a 1 n�o s�o primos.
      retorne falso
    } senao {   //Caso o n�mero seja maior que 1, ele ser� analisado abaixo.
      para (inteiro c = 1; c <= num; c++) {   //Percurso para ver a quantidade de divisores do n�mero.
        se (num % c == 0) {
          total_divisores++
          se (total_divisores > 2) {   //Se o "total_divisores" alcan�ar um valor maior que 2, n�o � necess�rio continuar a an�lise, pois ele j� n�o � primo.
            pare
          }
        }
      }

      se (total_divisores > 2) {  
        retorne falso   //Se o total de divisores for maior que dois, a fun��o retorna com valor "falso".
      } senao {
        retorne verdadeiro   //Se n�o, a fun�o retorna com valor "verdadeiro". 
      }
    }
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
