programa {
  inclua biblioteca Texto --> txt
  inclua biblioteca Util --> u
  funcao inicio() {
    escreva("{ EXERC�CIO 061 - Analisando Nomes }\n")

    //VARI�VEIS
    cadeia nome[6]
    caracter digito = 'S'
    inteiro posicao_nome, indice_nome, total_digito = 0, total_vogal = 0, total_palavras_pqn = 0

    //PREENCHIMENTO DO VETOR "NOME"
    para (posicao_nome = 0; posicao_nome < u.numero_elementos(nome); posicao_nome++) {
      escreva("Nome para a posi��o [", posicao_nome, "]: ")
      leia(nome[posicao_nome])
    }

    escreva(
      "\n==== ", u.numero_elementos(nome), " NOMES CADASTRADOS COM SUCESSO ====\n",
      "--------------- ANALISANDO ---------------\n"
    )

    //AN�LISE E EXIBI��O DE NOMES QUE POSSUEM MENOS DE 6 LETRAS
    escreva("Nomes com menos de 6 letras:\n")

    para (posicao_nome = 0; posicao_nome < u.numero_elementos(nome); posicao_nome++) {
      se (txt.numero_caracteres(nome[posicao_nome]) < 6) {
        escreva("[", posicao_nome, "] = ", nome[posicao_nome], " ; ")
        total_palavras_pqn++    //CALCULA O TOTAL  DE PALAVRAS PEQUENAS (QUE POSSUEM MENOS DE 6 LETRAS)
        u.aguarde(300)
      }
    }

    escreva("   TOTAL = ", total_palavras_pqn)

    //AN�LISE DE NOMES QUE COME�AM COM VOGAL
    escreva(
      "\n----------------------------------------\n",
      "Nomes que come�am com vogal s�o:\n"
    )

    para (posicao_nome = 0; posicao_nome < u.numero_elementos(nome); posicao_nome++) {    //FOI UTILIZADO ESTE LA�O PARA VERIFICAR CADA NOME
        
        se (txt.caixa_alta(txt.obter_caracter(nome[posicao_nome], 0)) == 'A' ou     //A FUN��O "OBTER_CARACTER" SELECIONA O PRIMEIRO CARACTER DE CADA NOME E
            txt.caixa_alta(txt.obter_caracter(nome[posicao_nome], 0)) == 'E' ou     //COMPARA COM OS VALORES "A, E, I, O, U" PARA VERIFICAR SE O PRIMEIRO CARACTER � OU N�O UMA VOGAL.
            txt.caixa_alta(txt.obter_caracter(nome[posicao_nome], 0)) == 'I' ou     //MAS ANTES DISSO, FOI UTILIZADA A FUN��O "CAIXA ALTA" PARA TRANSFORMAR O PRIMEIRO CARACTER 
            txt.caixa_alta(txt.obter_caracter(nome[posicao_nome], 0)) == 'O' ou     //SEMPRE EM CAIXA ALTA ANTES FAZER A COMPARA��O. PARA QUE ASSIM N�O SEJA NECESS�RIO AS VOGAIS
            txt.caixa_alta(txt.obter_caracter(nome[posicao_nome], 0)) == 'U') {     //QUE SE DESEJA COMPARAR EM MIN�SCULAS TAMB�M.
                                                                                    
                                                                                    
              escreva("[", posicao_nome, "] = ", nome[posicao_nome], " ; ")
              total_vogal++   //CALCULA O TOTAL DE PALAVRAS QUE COME�AM COM VOGAL
              u.aguarde(300)
        }
      
    }

    escreva("   TOTAL = ", total_vogal)

    //AN�LISE DO DIGITO
    escreva(
      "\n----------------------------------------\n",
      "Nomes que possuem a letra ", digito, ":\n"
    )

    para (posicao_nome = 0; posicao_nome < u.numero_elementos(nome); posicao_nome++) {    //ESTE LA�O � USADO PARA VERIFICAR CADA NOME

      para (indice_nome = 0; indice_nome < txt.numero_caracteres(nome[posicao_nome]); indice_nome++) {    //ESTE OUTRO LA�O � USADO PARA VERIFICAR CADA CARACTER DE CADA NOME AT� ENCONTRAR O DIGITO (CARACTER 'S').

        se (txt.caixa_alta(txt.obter_caracter(nome[posicao_nome], indice_nome)) == digito) {      //A FUN��O "OBTER CARACTER" SELECIONA O CARACTER DO NOME QUE EST� SENDO ANALISADO. A POSI��O DESTE CARACTER SELECIONADO � INDICADA PELA VARI�VEL "INDICE_NOME".
          escreva("[", posicao_nome, "] = ", nome[posicao_nome], " ; ")                           //AP�S SELECIONADO, ELE � COMPARADO COM O DIGITO (CARACTER 'S') E, CASO SEJA IGUAL AO DIGITO, O PROGRAMA ADICIONA O NOME NA LISTA DE NOMES QUE CONT�M O DIGITO E 
          total_digito++                                                                          //ADICIONA  AO TOTAL DE PALAVRAS QUE POSSUEM O DIGITO (CARACTER 'S'). AP�S ISTO, O LA�O � PARADO COM O COMANDO "PARE".
          pare
        }
      }

      u.aguarde(300)
    }

    escreva("   TOTAL = ", total_digito)
    
  }
}
