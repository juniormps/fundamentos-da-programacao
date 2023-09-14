programa {
  inclua biblioteca Util --> u
  funcao inicio() {

    inteiro vet[10], p, maior, menor

    //GERA NÚMEROS PARA O VETOR
    para (p = 0; p < u.numero_elementos(vet); p++) {
      vet[p] = u.sorteia(1, 5)
    }

    //MOSTRA O VETOR NA TELA E ANALISA O MAIOR E MENOR
    escreva("O vetor gerado foi: \n")
    para (p = 0; p < u.numero_elementos(vet); p++) {
      escreva(vet[p], " --> ")

      se (p == 0) {
        maior = vet[p]
        menor = vet[p]
      } senao {
        se (vet[p] > maior) {
          maior = vet[p]
        }
        se (vet[p] < menor) {
          menor = vet[p]
        }
      }

      u.aguarde(300)
    }

    escreva("FIM\n")

    //RESULTADOS
    escreva(
      "\n       RESULTADO DA ANÁLISE",
      "\n----------------------------------------\n",
      "O maior valor gerado foi: ", maior, "\n",
      "Ele foi encontrado nas seguintes posições: "
    )

    para (p = 0; p < u.numero_elementos(vet); p++) {  //POSIÇÕES EM QUE APARECEM O MAIOR VALOR
      se (vet[p] == maior) {
        escreva(p, "; ")
      }
    }

    escreva(
      "\n----------------------------------------\n",
      "O menor valor gerado foi: ", menor, "\n",
      "Ele foi encontrado nas seguintes posições: "
    )

    para (p = 0; p < u.numero_elementos(vet); p++) {  //POSIÇÕES EM QUE APARECEM O MENOR VALOR
      se (vet[p] == menor) {
        escreva(p, "; ")
      }
    }

    
  }
}
