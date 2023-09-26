programa {
  inclua biblioteca Util --> u
  funcao inicio() {
    //Versão do professor Guanabara.

    //VARIÁVEIS
    inteiro vet[10]
    inteiro p = 0  //variável de controle do laço de preechimento do vetor
    inteiro aux  //variável de controle do laço de verificação se o valor é repetido
    inteiro i  //variável de controle do laço de exibição do vetor
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

    //EXIBIÇÃO DO VETOR
    para (i = 0; i < u.numero_elementos(vet); i++) {
      escreva(vet[i], " ")
      u.aguarde(400)
    }

  }
}
