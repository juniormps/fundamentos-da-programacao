programa {
  inclua biblioteca Util --> u
  funcao inicio() {
    //Vers�o do Professor Guanabara

    //VARI�VEIS
    inteiro vet[10]  //vetor
    inteiro posicao = 0  //vari�vel de controle do la�o de preenchimento do vetor / indice de cada posi��o do vetor
    inteiro indice_verificador  //vari�vel de controle do percurso de verifica��o
    inteiro novo_valor  //vari�vel para guardar o valor original do vet[indice_verificador]
    logico encontrado  //vari�vel l�gica para indicar de o valor sorteado � repetido

    //PREENCHIMENTO DO VETOR
    para (posicao = 0; posicao < u.numero_elementos(vet); posicao++) {  //La�o de preenchimento do vetor
      
        se (posicao == 0) {  //Na posi��o zero n�o precisa de verifica��o, por isso ela recebe logo o valor.
          vet[posicao] = u.sorteia(1, 10) 
          
        } senao {  //Para posi��es maiores que zero � feita a verifica��o com o la�o abaixo.
          faca{  //La�o para sortear um valor para posi��o at� que o mesmo n�o tenha sido sorteado anteriormente.
            encontrado = falso    //valor da vari�vel que indica se o valor � repetido � iniciado com "falso"
            vet[posicao] = u.sorteia(1, 10)
            para (indice_verificador = 0; indice_verificador < posicao; indice_verificador++) {   //La�o para percorrer os valores que j� foram sorteados para fazer a verifica��o.
              se (vet[posicao] == vet[indice_verificador]) {
                encontrado = verdadeiro    //Se o valor sorteado for encontrado, a vari�vel que indica repeti��o de valor sorteado recebe o valor "verdadeiro".
              }
            }
          } enquanto (encontrado == verdadeiro) 
        }
    }

    //COLOCANDO O VETOR EM ORDEM (BUBBLE SORT)
    para (posicao = 0; posicao < (u.numero_elementos(vet) - 1); posicao++) {  
      para (indice_verificador = (posicao + 1); indice_verificador < u.numero_elementos(vet); indice_verificador++) {

        se (vet[posicao] > vet[indice_verificador]) {  //SWAP  -  (para fazer na ordem decrescente � s� alterar o s�mbolo nesta linha de ">" para "<")
          novo_valor = vet[posicao]
          vet[posicao] = vet[indice_verificador]
          vet[indice_verificador] = novo_valor
        }
      }
    }

    /*
    //EXIBI��O DO VETOR
    para (posicao = 0; posicao < u.numero_elementos(vet); posicao++) {
      escreva(vet[posicao], " ")
      u.aguarde(400)
    }
    */


    //BUSCA BIN�RIA

    //DECLARA��O DE VARI�VEIS PARA A BUSCA BIN�RIA
    inteiro chave  //valor a ser encontrado no vetor
    inteiro inicio = 0  //indice inicial da busca no vetor
    inteiro fim = (u.numero_elementos(vet) - 1)  //indice que indica onde � o final da busca no vetor
    inteiro meio = 0  //meio da busca no vetor

    //ENTRADA DE DADOS PARA A BUSCA
    escreva("\nQuer achar qual valor? ")
    leia(chave)

    encontrado = falso  //reutilizando a vari�vel l�gica utilizada anteriormente
    
    //IN�CIO DA BUSCA
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
      escreva("O valor ", chave, " foi encontrado na posi��o ", meio, " do vetor\n")
    } senao {
      escreva("Infelizmente o valor ", chave, " n�o se encontra no vetor.\n")
    }

  }
}
