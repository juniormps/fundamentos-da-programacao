programa {
  inclua biblioteca Util --> u
  funcao inicio() {
    //Vers�o desenvolvida por mim.

    //VARI�VEIS
    inteiro vet[10]
    inteiro posicao = 0
    inteiro indice_verificador
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

    //EXIBI��O DO VETOR
    para (posicao = 0; posicao < u.numero_elementos(vet); posicao++) {
      escreva(vet[posicao], " ")
      u.aguarde(400)
    }

  }
}
