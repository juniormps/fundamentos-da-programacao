programa {
  funcao inicio() {
    
    inteiro idade[5]  //Agora o exemplo tem uma posi��o a mais.
    idade[0] = 11
    idade[1] = 40
    idade[2] = 31
    idade[3] = 20
    idade[1] = 33  //Neste caso, a posi��o "1" ir� perder o valor 40 e passar� a ter este novo valor "33", MESMO TENDO UMA POSI��O A MAIS VAZIA.

    escreva("FIM")

  }
}
