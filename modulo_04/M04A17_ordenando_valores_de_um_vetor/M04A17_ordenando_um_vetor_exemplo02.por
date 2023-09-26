programa {
  inclua biblioteca Util --> u
  funcao inicio() {
    //Versão desenvolvida por mim, ALTERANDO OS VALORES DE CADA POSIÇÃO DO VETOR

    //VARIÁVEIS
    inteiro vet[10]  //vetor
    inteiro posicao = 0  //variável de controle do laço de preenchimento do vetor / indice de cada posição do vetor
    inteiro indice_verificador  //variável de controle do percurso de verificação
    inteiro novo_valor  //variável para guardar o valor original do vet[indice_verificador]
    logico encontrado  //variável lógica para indicar de o valor sorteado é repetido

    //PREENCHIMENTO DO VETOR
    para (posicao = 0; posicao < u.numero_elementos(vet); posicao++) {  //Laço de preenchimento do vetor
      
        se (posicao == 0) {  //Na posição zero não precisa de verificação, por isso ela recebe logo o valor.
          vet[posicao] = u.sorteia(1, 10) 
          
        } senao {  //Para posições maiores que zero é feita a verificação com o laço abaixo.
          faca{  //Laço para sortear um valor para posição até que o mesmo não tenha sido sorteado anteriormente.
            encontrado = falso    //valor da variável que indica se o valor é repetido é iniciado com "falso"
            vet[posicao] = u.sorteia(1, 10)
            para (indice_verificador = 0; indice_verificador < posicao; indice_verificador++) {   //Laço para percorrer os valores que já foram sorteados para fazer a verificação.
              se (vet[posicao] == vet[indice_verificador]) {
                encontrado = verdadeiro    //Se o valor sorteado for encontrado, a variável que indica repetição de valor sorteado recebe o valor "verdadeiro".
              }
            }
          } enquanto (encontrado == verdadeiro) 
        }
    }

    //COLOCANDO O VETOR EM ORDEM
    para (posicao = 1; posicao < u.numero_elementos(vet); posicao++) {  //A inicialização do percurso começa na "posiçao = 1" porque a posição zero não precisa ser verificada, já que não terá nenhum valor antes dela.
      para (indice_verificador = 0; indice_verificador < posicao; indice_verificador++) {

        se (vet[posicao] < vet[indice_verificador]) {  //SWAP  -  (para colocar na ordem decrescente é só alterar o símbolo nesta linha de "<" para ">")
          novo_valor = vet[indice_verificador]
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
