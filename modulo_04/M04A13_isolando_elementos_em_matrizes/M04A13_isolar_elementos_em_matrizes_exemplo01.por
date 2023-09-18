programa {
  inclua biblioteca Util --> u
  funcao inicio() {
    
    inteiro valor[4][4]  //Variável Composta (MATRIZ)
    inteiro l  //índice das linhas da matriz
    inteiro c  //índice das colunas da matriz

    //Laço de preenchimento da MATRIZ
    para(l = 0; l < u.numero_linhas(valor); l++) {      //As funções "numero_linhas" e "numero_colunas" funcionam semelhante à função "numero_elemento" utilizada para vetores.
      para(c = 0; c < u.numero_colunas(valor); c++) {
        valor[l][c] = u.sorteia(1, 10)
      }                                  
    }

    //EXIBIÇÃO DA MATRIZ COMPLETA
    para(l = 0; l < u.numero_linhas(valor); l++) {      
      para(c = 0; c < u.numero_colunas(valor); c++) {
        escreva(valor[l][c], "  ")
        u.aguarde(300)    
      }
      escreva("\n")                                   
    }

    escreva("\n")

    //EXIBIÇÃO DA SEGUNDA LINHA DA MATRIZ 
    escreva("Os itens da segunda linha são: ")    
    para(c = 0; c < u.numero_colunas(valor); c++) {
      escreva(valor[1][c], "  ")    //Como se deseja isolar  e exibir apenas a segunda LINHA,
      u.aguarde(300)                //a mesma deve ser fixada no comando "escreva".
    }                               //Obs.: Deve-se atentar para o ÍNDICE da linha que deseja fixar, que é sempre um número a menos.
                                    //exemplo: segunda linha --> indice = 1; primeira linha --> indice = 0
    escreva("\n\n")

    //EXIBIÇÃO DA TERCEIRA COLUNA DA MATRIZ
    escreva("Os itens da terceira coluna são: \n")
    para(l = 0; l < u.numero_linhas(valor); l++) {
      escreva(valor[l][2], "\n")    //Igualmente como foi feito no isolamento da segunda linha da matriz,
      u.aguarde(300)                //para isolar a terceira coluna, deve-se fixar o valor 2 no indice de coluna da matriz aqui no comando "escreva".
    }                               //Obs.: Assim como no caso das linhas, Deve-se também atentar para o ÍNDICE da coluna que deseja fixar, que é sempre um número a menos.
                                    //exemplo: segunda coluna --> indice = 1; primeira coluna --> indice = 0
    escreva("\nFIM!\n")

  }
}
