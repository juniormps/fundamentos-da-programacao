programa {
  //EXERCÍCIO 075 - Analisando o Vetor

  inclua biblioteca Util --> u

  funcao analisar(inteiro num[]) {

    inteiro indice

    escreva("===== ANALISANDO O VETOR =====\n")
    escreva("O vetor possui ", u.numero_elementos(num), " elementos...\n")
    
    escreva("Os elementos são:\n")
    para (indice = 0; indice < u.numero_elementos(num); indice++) {
      escreva("[", indice, "] -> ", num[indice], "  ")
    }

    escreva("\nValores PARES nas posições: ")
    para (indice = 0; indice < u.numero_elementos(num); indice++) {
      se (num[indice] % 2 == 0) {
        escreva(indice, "  ")
      }
    }

    escreva("\nValores ÍMPARES nas posições: ")
    para (indice = 0; indice < u.numero_elementos(num); indice++) {
      se (num[indice] % 2 != 0) {
        escreva(indice, "  ")
      }
    }

    escreva("\n=========================\n")

  }

  funcao inicio() {
   inteiro vet[]= {2, 8, 7, 4, 3, 1}
   analisar(vet)
  }

}
