programa {
  inclua biblioteca Util --> u
  funcao inicio() {
    //Versão do Professor Guanabara

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

    //COLOCANDO O VETOR EM ORDEM (BUBBLE SORT)
    para (posicao = 0; posicao < (u.numero_elementos(vet) - 1); posicao++) {  
      para (indice_verificador = (posicao + 1); indice_verificador < u.numero_elementos(vet); indice_verificador++) {

        se (vet[posicao] > vet[indice_verificador]) {  //SWAP  -  (para fazer na ordem decrescente é só alterar o símbolo nesta linha de ">" para "<")
          novo_valor = vet[posicao]
          vet[posicao] = vet[indice_verificador]
          vet[indice_verificador] = novo_valor
        }
      }
    }

    /*
    //EXIBIÇÃO DO VETOR
    para (posicao = 0; posicao < u.numero_elementos(vet); posicao++) {
      escreva(vet[posicao], " ")
      u.aguarde(400)
    }
    */


    //BUSCA BINÁRIA

    //DECLARAÇÃO DE VARIÁVEIS PARA A BUSCA BINÁRIA
    inteiro chave  //valor a ser encontrado no vetor
    inteiro inicio = 0  //indice inicial da busca no vetor
    inteiro fim = (u.numero_elementos(vet) - 1)  //indice que indica onde é o final da busca no vetor
    inteiro meio = 0  //meio da busca no vetor

    //ENTRADA DE DADOS PARA A BUSCA
    escreva("\nQuer achar qual valor? ")
    leia(chave)

    encontrado = falso  //reutilizando a variável lógica utilizada anteriormente
    
    //INÍCIO DA BUSCA
    enquanto (inicio <= fim) {  //aqui o sinal precisa ser "<="
      meio = (inicio + fim) / 2
      se (vet[meio] == chave) {
        encontrado = verdadeiro
        pare
      } senao {
        se (chave > vet[meio]) {
          inicio = (meio + 1)
        } senao {
          fim = (meio - 1)
        }
      }
    }

    se (encontrado) {
      escreva("O valor ", chave, " foi encontrado na posição ", meio, " do vetor\n")
    } senao {
      escreva("Infelizmente o valor ", chave, " não se encontra no vetor.\n")
    }

  }
}
