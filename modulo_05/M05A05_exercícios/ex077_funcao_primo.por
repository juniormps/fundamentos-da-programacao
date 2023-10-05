programa {
  //EXERCÍCIO 077 - Função Primo

  funcao logico primo(inteiro num) {
    inteiro total_divisores = 0
    se (num <= 1) {   //Se o número for menor ou igual a 1, ele já é descartado, pois números menores ou iguais a 1 não são primos.
      retorne falso
    } senao {   //Caso o número seja maior que 1, ele será analisado abaixo.
      para (inteiro c = 1; c <= num; c++) {   //Percurso para ver a quantidade de divisores do número.
        se (num % c == 0) {
          total_divisores++
          se (total_divisores > 2) {   //Se o "total_divisores" alcançar um valor maior que 2, não é necessário continuar a análise, pois ele já não é primo.
            pare
          }
        }
      }

      se (total_divisores > 2) {  
        retorne falso   //Se o total de divisores for maior que dois, a função retorna com valor "falso".
      } senao {
        retorne verdadeiro   //Se não, a funão retorna com valor "verdadeiro". 
      }
    }
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
