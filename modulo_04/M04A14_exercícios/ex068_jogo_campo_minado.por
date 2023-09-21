programa {
  inclua biblioteca Tipos --> tip
  inclua biblioteca Util --> u
  funcao inicio() {
    escreva("{ EXERCÍCIO 068 - Jogo do Campo Minado }\n\n")
    
    //INTRODUÇÃO
    escreva(
      "===== REGRAS DO JOGO =====\n",
      "Você precisa fazer 10 PONTOS.\n",
      "Cada tiro certo vale 2 PONTOS.",
      "Se errar é Game Over!\n\n"
    )

    //VARIÁVEIS
    inteiro campo_minado[5][5]  //campo minado com os valores verdadeiros
    inteiro linha_campo  //índice de linha do campo minado
    inteiro coluna_campo  //índice de coluna do campo minado
    inteiro total_alvo = 0  //total de alvos (valor 1) sorteados (20 alvos)
    inteiro total_mina = 0  //total de minas (valor 0) sorteadas (5 minas)
    caracter campo_falso[5][5]  //campo que esconde os valores do campo minado verdadeiro
    inteiro linha_c_falso  //índice de linha do campo falso
    inteiro coluna_c_falso  //índice de coluna do campo falso
    inteiro coordenada_linha  //coordenada linha dada pelo usuário
    inteiro coordenada_coluna  //coordenada coluna dada pelo usuário
    inteiro tentativas = 1  //total de tentativas (máximo 5)
    inteiro pontos = 0  //total de pontos feitos pelo usuário
    cadeia resp  //resposta do usuário / entrada de dados

    escreva(
      "-----------------------------\n",
      "       INÍCIO DO JOGO\n",
      "-----------------------------\n"
    )

    //PREENCHIMENTO DO CAMPO MINADO
    para (linha_campo = 0; linha_campo < u.numero_linhas(campo_minado); linha_campo++) {
      para (coluna_campo = 0; coluna_campo < u.numero_colunas(campo_minado); coluna_campo++) {
        se (total_mina < 5) {
          se (total_alvo < 20) {
            campo_minado[linha_campo][coluna_campo] = u.sorteia(0, 1)
          } senao {
            campo_minado[linha_campo][coluna_campo] = 0
          }
          
          se (campo_minado[linha_campo][coluna_campo] == 1) {
            total_alvo++
          } senao {
            total_mina++
          }

        } senao {
          campo_minado[linha_campo][coluna_campo] = 1
        }
      }
    }

    //EXIBIÇÃO DO CAMPO MINADO
    para (linha_campo = 0; linha_campo < u.numero_linhas(campo_minado); linha_campo++) {
      para (coluna_campo = 0; coluna_campo < u.numero_colunas(campo_minado); coluna_campo++) {
        escreva(campo_minado[linha_campo][coluna_campo], "  ")
      }
      escreva("\n")
    }

    escreva("\n")

    //PREENCHIMENTO E EXIBIÇÃO DO CAMPO FALSO
    para (linha_c_falso = 0; linha_c_falso < u.numero_linhas(campo_falso); linha_c_falso++) {
      para (coluna_c_falso = 0; coluna_c_falso < u.numero_colunas(campo_falso); coluna_c_falso++) {
        campo_falso[linha_c_falso][coluna_c_falso] = '?'
        escreva(campo_falso[linha_c_falso][coluna_c_falso], "  ")
      }
      escreva("\n")
    }

    //INÍCIO DO LAÇO DE ENTRADA DE DADOS (TENTATIVAS / COORDENADAS)
    enquanto(verdadeiro) {
      escreva(
      "-----------------------------\n",
      "FAÇA SUA JOGADA! (Tentativa: ", tentativas, ")\n"
      )

      //Laço de repetição para caso as coordenadas passadas já tiverem sido inseridas anteriormente
      enquanto (verdadeiro) {

        //Início do laço de validação da resposta do usuário da coordenada LINHA
        enquanto (verdadeiro) {  
          escreva("LINHA [1 a 5]= ")
          leia(resp)
          se (tip.cadeia_e_inteiro(resp, 10)) {  //Aqui valida se a resposta é um número inteiro
            coordenada_linha = tip.cadeia_para_inteiro(resp, 10)
            se (coordenada_linha != 1 e coordenada_linha != 2 e coordenada_linha != 3 e coordenada_linha != 4 e coordenada_linha != 5) {  //Aqui valida se a resposta é um número de 1 a 5
              escreva("<<ERRO!>> Insira um número de 1 a 5\n")
            } senao {
              pare
            }
          } senao {
            escreva("<<ERRO!>> Insira um número inteiro de 1 a 5\n")
          }
        } //Fim da validação da coordenada LINHA (linha 88)

        
        //Início do laço de validação da resposta do usuário da coordenada COLUNA
        enquanto (verdadeiro) {
          escreva("COLUNA [1 a 5]= ")
          leia(resp)
          se (tip.cadeia_e_inteiro(resp, 10)) {  //Aqui valida se a resposta é um número inteiro
            coordenada_coluna = tip.cadeia_para_inteiro(resp, 10)
            se (coordenada_coluna != 1 e coordenada_coluna != 2 e coordenada_coluna != 3 e coordenada_coluna != 4 e coordenada_coluna != 5) {  //Aqui valida se a resposta é um número de 1 a 5
              escreva("<<ERRO!>> Insira um número de 1 a 5\n")
            } senao {
              pare
            }
          } senao {
            escreva("<<ERRO!>> Insira um número inteiro de 1 a 5\n")
          }
        } //Fim da validação da coordenada COLUNA (linha 105)

        //Início da validação se a coordenada já foi inserida anteriormente
        se (campo_falso[coordenada_linha - 1][coordenada_coluna - 1] != '?') {
          escreva(
            "<<ERRO>> Esta coordenada já foi utilizada,\n",
            "insira uma coordenada diferente!\n"
          )
        } senao {
          se (campo_minado[coordenada_linha - 1][coordenada_coluna - 1] == 1) {                      
          campo_falso[coordenada_linha - 1][coordenada_coluna - 1] = 'V' 
          }
          pare
        }  //Fim da validação se a coordenada já foi inserida anteriormente
        
      }  //FIM do laço de repetição (linha 85) para caso as coordenadas passadas já tiverem sido inseridas anteriormente


      
      se (campo_minado[coordenada_linha - 1][coordenada_coluna - 1] == 1) {     //Aqui é estabelecido o que acontece caso o tiro acerte um alvo
        escreva("--> TIRO CERTO! Não acertou nenhuma bomba!\n")                 //Como os indices das matrizes começam no zero, adicionei o "-1" na "coordenada_linha" e 
        campo_falso[coordenada_linha - 1][coordenada_coluna - 1] = 'V'          //na "coordenada_coluna" para que o usuário possa dar as coordenadas de 1 à 5, ficando desta forma mais intuitivo.

        para (linha_c_falso = 0; linha_c_falso < u.numero_linhas(campo_falso); linha_c_falso++) {   //Este laço exibe o "campo falso" atualizado com as posições dos tiros que acertaram o alvo, marcadas com 'V'. 
          para (coluna_c_falso = 0; coluna_c_falso < u.numero_colunas(campo_falso); coluna_c_falso++) {
            escreva(campo_falso[linha_c_falso][coluna_c_falso], "  ")
          }
          escreva("\n")
        }

        pontos += 2
        se (pontos == 10) {  //CASO O USUÁRIO ATINJA 10 PONTOS, o laço de entrada de dados / coordenadas (linha 78) é encerrado aqui.
          pare
        }
        
      } senao {     //Aqui é estabelicido o que acontece caso o tiro acerte uma mina.
        escreva(
          "--> TIRO ERRADO! Você acertou uma bomba!\n",
          "-----------------------------\n",
          "       GAME OVER\n"
        )

        campo_minado[coordenada_linha - 1][coordenada_coluna - 1] = 2    //aqui é atribuido um novo valor para posição onde acertou uma mina
        
        pare  //CASO O USUÁRIO ATINJA UMA MINA, o laço de entrada de dados / coordenadas (linha 78) é encerrado aqui.
      }

      tentativas++
    }  //FIM DO LAÇO DE ENTRADA DE DADOS / COORDENADAS (LINHA 78)

    escreva(
      "-----------------------------\n",
      "FIM DE JOGO!\n"
    )

    //Este laço atribui novos valores à matriz "campo_falso"
    para (linha_c_falso = 0; linha_c_falso < u.numero_linhas(campo_falso); linha_c_falso++) {     
      para (coluna_c_falso = 0; coluna_c_falso < u.numero_colunas(campo_falso); coluna_c_falso++) {
        se (campo_falso[linha_c_falso][coluna_c_falso] == '?'){
          campo_falso[linha_c_falso][coluna_c_falso] = '-'    //com '-' nas posições onde era '?'
        }
        se (campo_minado[linha_c_falso][coluna_c_falso] == 0) {
          campo_falso[linha_c_falso][coluna_c_falso] = 'O'    //e 'O' nas posições onde era '0' (mina)
        }
        se (campo_minado[linha_c_falso][coluna_c_falso] == 2) {
          campo_falso[linha_c_falso][coluna_c_falso] = '*'    //e '*' na posição onde era '2' (mina acertada)
        }
      }
    }

    //Este laço exibe o campo falso com as posições das bombas e os locais onde os tiros foram acertados:
    //com 'V' onde acertou o alvo; '*' onde acertou uma mina; '-' onde era alvo e não foi acertado e; 'O' onde era mina e não foi acertado.
    para (linha_c_falso = 0; linha_c_falso < u.numero_linhas(campo_falso); linha_c_falso++) {     
      para (coluna_c_falso = 0; coluna_c_falso < u.numero_colunas(campo_falso); coluna_c_falso++) {   
        escreva(campo_falso[linha_c_falso][coluna_c_falso], "  ")                                     
      }
      escreva("\n")
    }  //FIM do laço (linha 190)

    escreva(
      "Você fez ", pontos, " pontos em ", tentativas, " tentativas.\n",
      "-----------------------------\n"
    )

  }
}

