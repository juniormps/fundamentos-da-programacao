programa {
  inclua biblioteca Util --> u
  funcao inicio() {
    //Vers�o do professor Guanabara.

    //VARI�VEIS
    inteiro vet[10]
    inteiro p = 0  //vari�vel de controle do la�o de preechimento do vetor
    inteiro aux  //vari�vel de controle do la�o de verifica��o se o valor � repetido
    inteiro i  //vari�vel de controle do la�o de exibi��o do vetor
    logico encontrado

    //PREENCHIMENTO DO VETOR SEM VALORES REPETIDOS
    enquanto (p < u.numero_elementos(vet)) {
      vet[p] = u.sorteia(1, 10)
      encontrado = falso
      para (aux = 0; aux < p; aux++) {
        se (vet[aux] == vet[p]) {
          encontrado = verdadeiro
          pare
        }
      }
      se (nao encontrado) {
        p++
      }
    }

    //EXIBI��O DO VETOR
    para (i = 0; i < u.numero_elementos(vet); i++) {
      escreva(vet[i], " ")
      u.aguarde(400)
    }

  }
}
