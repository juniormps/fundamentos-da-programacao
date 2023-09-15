programa {
  inclua biblioteca Texto --> txt
  inclua biblioteca Util --> u
  funcao inicio() {
    escreva("{ EXERC�CIO 061 - Analisando Nomes }\n")

    //VARI�VEIS
    cadeia nome[6]
    caracter digito = 'S', letra_inicial
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

    para (posicao_nome = 0; posicao_nome < u.numero_elementos(nome); posicao_nome++) {    //ESTE LA�O � UTILIZADO PARA VERIFICAR CADA NOME
        
      letra_inicial = txt.obter_caracter(txt.caixa_alta(nome[posicao_nome]), 0)     //A FUN��O "CAIXA_ALTA" TRANSFORMA O NOME TODO QUE EST� SENDO ANALISADO EM CAIXA ALTA.
                                                                                    //DEPOIS, A FUN��O "OBTER_CARACTER" SELECIONA O PRIMEIRO CARACTER DO NOME (POSI��O 0) E JOGA PARA UMA VARI�VEL CHAMADA "LETRA_INICIAL".

      se (letra_inicial == 'A' ou letra_inicial == 'E' ou letra_inicial == 'I' ou letra_inicial == 'O' ou letra_inicial == 'U') {     //AP�S AS ETAPAS ACIMA, A VARI�VEL "LETRA_INICIAL" � COMPARADA COM AS VOGAIS EM CAIXA ALTA PARA VERIFICAR SE O NOME COME�A COM VOGAL OU N�O.             
                                                                                                                                            
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

      se (txt.posicao_texto(digito, txt.caixa_alta(nome[posicao_nome]), 0) != -1) {      //A EXPRESS�O VERIFICA SE O DIGITO (CARACTER 'S) � ENCONTRADO EM ALGUMA POSI��O DO NOME ANALISADO
        escreva("[", posicao_nome, "] = ", nome[posicao_nome], " ; ")                    //CASO SEJA ENCONTRADO EM ALGUMA POSI��O, ESTA SER� MAIOR OU IGUAL A ZERO, LOGO, DIFERENTE DE -1. POIS AS POSI��ES COME�AM A CONTAR A PARTIR DO ZERO. 
        total_digito++                                                                   //NESTE CASO, SER� ESCRITO O NOME NA LISTA DOS QUE POSSUEM O DIGITO E CONTABILIZADO NO TOTAL DE NOMES QUE POSSUEM O DIGITO "TOTAL_DIGITO".
      }

      u.aguarde(300)
    }

    escreva("   TOTAL = ", total_digito)
    
  }
}
