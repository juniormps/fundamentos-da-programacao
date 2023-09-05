programa {
  funcao inicio() {
    
    inteiro idade[5]  //Agora o exemplo tem uma posição a mais.
    idade[0] = 11
    idade[1] = 40
    idade[2] = 31
    idade[3] = 20
    idade[1] = 33  //Neste caso, a posição "1" irá perder o valor 40 e passará a ter este novo valor "33", MESMO TENDO UMA POSIÇÃO A MAIS VAZIA.

    escreva("FIM")

  }
}
