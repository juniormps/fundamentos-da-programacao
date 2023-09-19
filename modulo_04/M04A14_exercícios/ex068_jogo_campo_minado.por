programa {
    inclua biblioteca Util --> u
    funcao inicio() {
      escreva("{ EXERC�CIO 068 - Jogo do Campo Minado }\n\n")
      
      //INTRODU��O
      escreva(
        "===== REGRAS DO JOGO =====\n",
        "Voc� precisa fazer 10 PONTOS.\n",
        "Cada tiro certo vale 2 PONTOS.",
        "Se errar � Game Over!\n\n"
      )

      //VARI�VEIS
      inteiro campo_minado[5][5]  //campo minado com os valores verdadeiros
      inteiro linha_campo  //�ndice de linha do campo minado
      inteiro coluna_campo  //�ndice de coluna do campo minado
      inteiro total_alvo = 0  //total de alvos (valor 1) sorteados (20 alvos)
      inteiro total_mina = 0  //total de minas (valor 0) sorteadas (5 minas)
      caracter campo_falso[5][5]  //campo que esconde os valores do campo minado verdadeiro
      inteiro linha_c_falso  //�ndice de linha do campo falso
      inteiro coluna_c_falso  //�ndice de coluna do campo falso
      inteiro coordenada_linha  //coordenada linha dada pelo usu�rio
      inteiro coordenada_coluna  //coordenada coluna dada pelo usu�rio
      inteiro tentativas = 1  //total de tentativas (m�ximo 5)

      escreva(
        "-----------------------------\n",
        "       IN�CIO DO JOGO\n",
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

      //VERIFICA��O SE A POSI��O � UM ALVO OU UMA MINA
      para (linha_campo = 0; linha_campo < u.numero_linhas(campo_minado); linha_campo++) {
        para (coluna_campo = 0; coluna_campo < u.numero_colunas(campo_minado); coluna_campo++) {
          
        }
      }


      //EXIBI��O DO CAMPO MINADO
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
        "FA�A SUA JOGADA! (Tentativa: ", tentativas, ")\n"
        )

        escreva("LINHA = ")
        leia(coordenada_linha)
        
        escreva("COLUNA = ")
        leia(coordenada_coluna)

        se (campo_minado[coordenada_linha][coordenada_coluna] == 1) {
          escreva("--> TIRO CERTO! N�o acertou nenhuma bomba!\n")
          campo_falso[coordenada_linha][coordenada_coluna] = 'V'

          para (linha_c_falso = 0; linha_c_falso < u.numero_linhas(campo_falso); linha_c_falso++) {
            para (coluna_c_falso = 0; coluna_c_falso < u.numero_colunas(campo_falso); coluna_c_falso++) {
              escreva(campo_falso[linha_c_falso][coluna_c_falso], "  ")
            }
            escreva("\n")
          }
          
        } senao {
          escreva(
            "--> TIRO ERRADO! Voc� acertou uma bomba!\n",
            "-----------------------------\n",
            "       GAME OVER\n",
            "-----------------------------\n"
          )

          para (linha_c_falso = 0; linha_c_falso < u.numero_linhas(campo_falso); linha_c_falso++) {     //este la�o atribui novos valores � matriz "campo_falso"
            para (coluna_c_falso = 0; coluna_c_falso < u.numero_colunas(campo_falso); coluna_c_falso++) {
              se (campo_falso[linha_c_falso][coluna_c_falso] == '?'){
                campo_falso[linha_c_falso][coluna_c_falso] = '-'    //com '-' nas posi��es onde era '?'
              }
              se (campo_minado[linha_c_falso][coluna_c_falso] == 0) {
                campo_falso[linha_c_falso][coluna_c_falso] = 'O'    //e 'O' nas posi��es onde era '0' (mina)
              }
            }
          }

          campo_falso[coordenada_linha][coordenada_coluna] = '*'    //aqui � atribuido um novo valor para posi��o onde acertou uma mina

          para (linha_c_falso = 0; linha_c_falso < u.numero_linhas(campo_falso); linha_c_falso++) {     //este la�o exibe o campo falso com as posi��es das bombas e os locais onde os tiros foram acertados:
            para (coluna_c_falso = 0; coluna_c_falso < u.numero_colunas(campo_falso); coluna_c_falso++) {   //com 'V' onde acertou o alvo; '*' onde acertou uma mina; '-' onde era alvo e n�o foi acertado e; 'O' onde era mina e n�o foi acertado.
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
