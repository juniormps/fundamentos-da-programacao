programa {
  inclua biblioteca Util --> u
  funcao inicio() {
    //Vers�o desenvolvida por mim, COLOCANDO OS VALORES DO VETOR NA ORDEM CRESCENTE.
    //Neste exemplo, os valores sorteados podem ser REPETIDOS.

    //VARI�VEIS
    inteiro vet[10]  //vetor
    inteiro posicao = 0  //vari�vel de controle do la�o de preenchimento do vetor / indice de cada posi��o do vetor
    inteiro indice_verificador  //vari�vel de controle do percurso de verifica��o
    inteiro novo_valor  //vari�vel para guardar o valor original do vet[indice_verificador]

    //PREENCHIMENTO DO VETOR
    para (posicao = 0; posicao < u.numero_elementos(vet); posicao++) {
      vet[posicao] = u.sorteia(1, 10)
    }

    //COLOCANDO O VETOR EM ORDEM
    para (posicao = 1; posicao < u.numero_elementos(vet); posicao++) {
      para (indice_verificador = 0; indice_verificador < posicao; indice_verificador++) {

        novo_valor = vet[indice_verificador]

        se (vet[posicao] < vet[indice_verificador]) {
          vet[indice_verificador] = vet[posicao]
          vet[posicao] = novo_valor
        }
      }
    }

    //EXIBI��O DO VETOR
    para (posicao = 0; posicao < u.numero_elementos(vet); posicao++) {
      escreva(vet[posicao], " ")
      u.aguarde(400)
    }

















  }
}
