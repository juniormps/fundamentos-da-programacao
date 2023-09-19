programa {
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

      //VERIFICAÇÃO SE A POSIÇÃO É UM ALVO OU UMA MINA
      para (linha_campo = 0; linha_campo < u.numero_linhas(campo_minado); linha_campo++) {
        para (coluna_campo = 0; coluna_campo < u.numero_colunas(campo_minado); coluna_campo++) {
          
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

      //PREENCHIMENTO DO CAMPO FALSO
      para (linha_c_falso = 0; linha_c_falso < u.numero_linhas(campo_falso); linha_c_falso++) {
        para (coluna_c_falso = 0; coluna_c_falso < u.numero_colunas(campo_falso); coluna_c_falso++) {
          campo_falso[linha_c_falso][coluna_c_falso] = '?'
          escreva(campo_falso[linha_c_falso][coluna_c_falso], "  ")
        }
        escreva("\n")
      }

      

      enquanto(verdadeiro) {
        escreva(
        "-----------------------------\n",
        "FAÇA SUA JOGADA! (Tentativa: ", tentativas, ")\n"
        )

        escreva("LINHA = ")
        leia(coordenada_linha)
        
        escreva("COLUNA = ")
        leia(coordenada_coluna)

        se (campo_minado[coordenada_linha][coordenada_coluna] == 1) {
          escreva("--> TIRO CERTO! Não acertou nenhuma bomba!\n")
          campo_falso[coordenada_linha][coordenada_coluna] = 'V'

          para (linha_c_falso = 0; linha_c_falso < u.numero_linhas(campo_falso); linha_c_falso++) {
            para (coluna_c_falso = 0; coluna_c_falso < u.numero_colunas(campo_falso); coluna_c_falso++) {
              escreva(campo_falso[linha_c_falso][coluna_c_falso], "  ")
            }
            escreva("\n")
          }
          
        } senao {
          escreva(
            "--> TIRO ERRADO! Você acertou uma bomba!\n",
            "-----------------------------\n",
            "       GAME OVER\n",
            "-----------------------------\n"
          )

          para (linha_c_falso = 0; linha_c_falso < u.numero_linhas(campo_falso); linha_c_falso++) {     //este laço atribui novos valores à matriz "campo_falso"
            para (coluna_c_falso = 0; coluna_c_falso < u.numero_colunas(campo_falso); coluna_c_falso++) {
              se (campo_falso[linha_c_falso][coluna_c_falso] == '?'){
                campo_falso[linha_c_falso][coluna_c_falso] = '-'    //com '-' nas posições onde era '?'
              }
              se (campo_minado[linha_c_falso][coluna_c_falso] == 0) {
                campo_falso[linha_c_falso][coluna_c_falso] = 'O'    //e 'O' nas posições onde era '0' (mina)
              }
            }
          }

          campo_falso[coordenada_linha][coordenada_coluna] = '*'    //aqui é atribuido um novo valor para posição onde acertou uma mina

          para (linha_c_falso = 0; linha_c_falso < u.numero_linhas(campo_falso); linha_c_falso++) {     //este laço exibe o campo falso com as posições das bombas e os locais onde os tiros foram acertados:
            para (coluna_c_falso = 0; coluna_c_falso < u.numero_colunas(campo_falso); coluna_c_falso++) {   //com 'V' onde acertou o alvo; '*' onde acertou uma mina; '-' onde era alvo e não foi acertado e; 'O' onde era mina e não foi acertado.
              escreva(campo_falso[linha_c_falso][coluna_c_falso], "  ")                                     
            }
            escreva("\n")
          }
          pare
        }
      }













    }
  }
}
