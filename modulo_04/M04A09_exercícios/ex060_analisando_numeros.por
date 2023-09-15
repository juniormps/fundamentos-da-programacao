programa {
  inclua biblioteca Util --> u
  funcao inicio() {
    escreva("{ EXERCÍCIO 060 - Analisando Números }\n")

    //VARIÁVEIS
    inteiro num[10]
    inteiro posicao
    inteiro soma_pares = 0
    inteiro maior_valor
    inteiro quant_impar = 0
    inteiro quant_maior = 0

    escreva("Sorteando ", u.numero_elementos(num), " valores...\n")

    u.aguarde(300)

    //PREENCHIMENTO DO VETOR
    para (posicao = 0; posicao < u.numero_elementos(num); posicao++) {
      num[posicao] = u.sorteia(1, 10)
    }

    //EXIBIÇÃO DOS VALORES DO VETOR
    para (posicao = 0; posicao < u.numero_elementos(num); posicao++) {
      escreva(num[posicao], ".. ")
      u.aguarde(300)
    }

    escreva(
      "\n-----------------------------------\n",
    "   ANALISANDO OS VALORES SORTEADOS\n",
      "-----------------------------------\n"
    )

    //POSIÇÕES E SOMA DOS VALORES PARES
    escreva("---> Os valores PARES encontram-se nas posições: ")

    para (posicao = 0; posicao < u.numero_elementos(num); posicao++) {
      se (num[posicao] % 2 == 0) {
        escreva(posicao, "; ")
        soma_pares += num[posicao]
        u.aguarde(300)
      }
    }

    escreva("\n   ---> A soma deles é: ", soma_pares)
    
    //POSIÇÕES DOS VALORES ÍMPARES E QUANTIDADE DE VEZES QUE FORAM SORTEADOS
    escreva("\n---> Os valores ÍMPARES encontran-se nas posições: ")

    para (posicao = 0; posicao < u.numero_elementos(num); posicao++) {
      se (num[posicao] % 2 != 0) {
        escreva(posicao, "; ")
        quant_impar++
        u.aguarde(300)
      }
    }

    escreva("\n   ---> A quantidade de números ÍMPARES sorteados foi: ", quant_impar)

    //ANÁLISE DO MAIOR VALOR SORTEADO
    para (posicao = 0; posicao < u.numero_elementos(num); posicao++) {
      se (posicao == 0) {
        maior_valor = num[posicao]
      } senao {
        se (num[posicao] > maior_valor) {
          maior_valor = num[posicao]
        }
      }
    }

    escreva("\n---> O MAIOR valor sorteado foi: ", maior_valor)

    //POSIÇÕES EM QUE OCORRERAM E QUANTIDADE DE VEZES QUE O MAIOR VALOR FOI SORTEADO
    escreva("\n   ---> O mesmo ocorreu nas seguintes posições: ")

    para (posicao = 0; posicao < u.numero_elementos(num); posicao++) {
      se (num[posicao] == maior_valor) {
        escreva(posicao, "; ")
        quant_maior++
        u.aguarde(300)
      }
    }

    escreva("\n   ---> Em um total de ", quant_maior, " vezes.")
    
    escreva("\n-----------------------------------\n")
  }
}
