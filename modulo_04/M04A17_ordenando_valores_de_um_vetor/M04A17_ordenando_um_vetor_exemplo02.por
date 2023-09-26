programa {
  inclua biblioteca Util --> u
  funcao inicio() {
    //Vers�o desenvolvida por mim, ALTERANDO OS VALORES DE CADA POSI��O DO VETOR

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

    //COLOCANDO O VETOR EM ORDEM
    para (posicao = 1; posicao < u.numero_elementos(vet); posicao++) {  //A inicializa��o do percurso come�a na "posi�ao = 1" porque a posi��o zero n�o precisa ser verificada, j� que n�o ter� nenhum valor antes dela.
      para (indice_verificador = 0; indice_verificador < posicao; indice_verificador++) {

        se (vet[posicao] < vet[indice_verificador]) {  //SWAP  -  (para colocar na ordem decrescente � s� alterar o s�mbolo nesta linha de "<" para ">")
          novo_valor = vet[indice_verificador]
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
