programa {
  inclua biblioteca Util --> u
  funcao inicio() {
    //Utilizando a fun��o "n�mero de elementos" da biblioteca "�til,
    //n�o � necess�rio fazer altera��es no contador, 
    //caso seja alterada a quantidade de elementos na declara��o do VETOR.
    
    inteiro idade[8]
    inteiro pos  //posi��o

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
