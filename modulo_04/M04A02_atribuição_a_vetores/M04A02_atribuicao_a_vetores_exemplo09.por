programa {
  funcao inicio() {
    //Outro exemplo de PERCURSO EM VETORES, 
    //desta vez, lendo valores digitados no teclado
    
    inteiro idade[4]
    inteiro pos  //posição

    para(pos = 0; pos < 4; pos++) {
      escreva("Digite uma idade: ")
      leia(idade[pos])
    }

    escreva("\nAs idades digitadas foram:\n")

    para(pos = 0; pos < 4; pos++) {
      escreva(idade[pos], " --> ")
    }

    escreva("FIM\n")

  }
}
