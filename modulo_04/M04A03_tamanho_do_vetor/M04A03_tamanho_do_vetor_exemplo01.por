programa {
  inclua biblioteca Util --> u
  funcao inicio() {
    //Utilizando a função "número de elementos" da biblioteca "Útil,
    //não é necessário fazer alterações no contador, 
    //caso seja alterada a quantidade de elementos na declaração do VETOR.
    
    inteiro idade[8]
    inteiro pos  //posição

    para(pos = 0; pos < u.numero_elementos(idade); pos++) {  
      escreva("Digite uma idade: ")
      leia(idade[pos])
    }

    escreva("\nAs idades digitadas foram:\n")

    para(pos = 0; pos < u.numero_elementos(idade); pos++) {
      escreva(idade[pos], " --> ")
      u.aguarde(500)
    }

    escreva("FIM\n")

  }
}
