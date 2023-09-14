programa {
  inclua biblioteca Util --> u
  funcao inicio() {
    escreva("{ EXERC�CIO 060 - Analisando N�meros }\n")

    //VARI�VEIS
    inteiro num[10], posicao, soma_pares = 0, maior_valor, quant_impar = 0, quant_maior = 0

    escreva("Sorteando ", u.numero_elementos(num), " valores...\n")

    u.aguarde(300)

    //PREENCHIMENTO DO VETOR
    para (posicao = 0; posicao < u.numero_elementos(num); posicao++) {
      num[posicao] = u.sorteia(1, 10)
    }

    //EXIBI��O DOS VALORES DO VETOR
    para (posicao = 0; posicao < u.numero_elementos(num); posicao++) {
      escreva(num[posicao], ".. ")
      u.aguarde(300)
    }

    escreva(
      "\n-----------------------------------\n",
    "   ANALISANDO OS VALORES SORTEADOS\n",
      "-----------------------------------\n"
    )

    //POSI��ES E SOMA DOS VALORES PARES
    escreva("---> Os valores PARES encontram-se nas posi��es: ")

    para (posicao = 0; posicao < u.numero_elementos(num); posicao++) {
      se (num[posicao] % 2 == 0) {
        escreva(posicao, "; ")
        soma_pares += num[posicao]
        u.aguarde(300)
      }
    }

    escreva("\n   ---> A soma deles �: ", soma_pares)
    
    //POSI��ES DOS VALORES �MPARES E QUANTIDADE DE VEZES QUE FORAM SORTEADOS
    escreva("\n---> Os valores �MPARES encontran-se nas posi��es: ")

    para (posicao = 0; posicao < u.numero_elementos(num); posicao++) {
      se (num[posicao] % 2 != 0) {
        escreva(posicao, "; ")
        quant_impar++
        u.aguarde(300)
      }
    }

    escreva("\n   ---> A quantidade de n�meros �MPARES sorteados foi: ", quant_impar)

    //AN�LISE DO MAIOR VALOR SORTEADO
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

    //POSI��ES EM QUE OCORRERAM E QUANTIDADE DE VEZES QUE O MAIOR VALOR FOI SORTEADO
    escreva("\n   ---> O mesmo ocorreu nas seguintes posi��es: ")

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
