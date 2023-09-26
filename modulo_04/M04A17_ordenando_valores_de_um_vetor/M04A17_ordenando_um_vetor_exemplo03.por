programa {
  inclua biblioteca Util --> u
  funcao inicio() {
    //Versão desenvolvida por mim, COLOCANDO OS VALORES DO VETOR NA ORDEM CRESCENTE.
    //Neste exemplo, os valores sorteados podem ser REPETIDOS.

    //VARIÁVEIS
    inteiro vet[10]  //vetor
    inteiro posicao = 0  //variável de controle do laço de preenchimento do vetor / indice de cada posição do vetor
    inteiro indice_verificador  //variável de controle do percurso de verificação
    inteiro novo_valor  //variável para guardar o valor original do vet[indice_verificador]

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

    //EXIBIÇÃO DO VETOR
    para (posicao = 0; posicao < u.numero_elementos(vet); posicao++) {
      escreva(vet[posicao], " ")
      u.aguarde(400)
    }

















  }
}
