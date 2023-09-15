programa {
  inclua biblioteca Texto --> txt
  inclua biblioteca Util --> u
  funcao inicio() {
    escreva("{ EXERCÍCIO 061 - Analisando Nomes }\n")

    //VARIÁVEIS
    cadeia nome[6]
    caracter digito = 'S', letra_inicial
    inteiro posicao_nome, indice_nome, total_digito = 0, total_vogal = 0, total_palavras_pqn = 0

    //PREENCHIMENTO DO VETOR "NOME"
    para (posicao_nome = 0; posicao_nome < u.numero_elementos(nome); posicao_nome++) {
      escreva("Nome para a posição [", posicao_nome, "]: ")
      leia(nome[posicao_nome])
    }

    escreva(
      "\n==== ", u.numero_elementos(nome), " NOMES CADASTRADOS COM SUCESSO ====\n",
      "--------------- ANALISANDO ---------------\n"
    )

    //ANÁLISE E EXIBIÇÃO DE NOMES QUE POSSUEM MENOS DE 6 LETRAS
    escreva("Nomes com menos de 6 letras:\n")

    para (posicao_nome = 0; posicao_nome < u.numero_elementos(nome); posicao_nome++) {
      se (txt.numero_caracteres(nome[posicao_nome]) < 6) {
        escreva("[", posicao_nome, "] = ", nome[posicao_nome], " ; ")
        total_palavras_pqn++    //CALCULA O TOTAL  DE PALAVRAS PEQUENAS (QUE POSSUEM MENOS DE 6 LETRAS)
        u.aguarde(300)
      }
    }

    escreva("   TOTAL = ", total_palavras_pqn)

    //ANÁLISE DE NOMES QUE COMEÇAM COM VOGAL
    escreva(
      "\n----------------------------------------\n",
      "Nomes que começam com vogal são:\n"
    )

    para (posicao_nome = 0; posicao_nome < u.numero_elementos(nome); posicao_nome++) {    //ESTE LAÇO É UTILIZADO PARA VERIFICAR CADA NOME
        
      letra_inicial = txt.obter_caracter(txt.caixa_alta(nome[posicao_nome]), 0)     //A FUNÇÃO "CAIXA_ALTA" TRANSFORMA O NOME TODO QUE ESTÁ SENDO ANALISADO EM CAIXA ALTA.
                                                                                    //DEPOIS, A FUNÇÃO "OBTER_CARACTER" SELECIONA O PRIMEIRO CARACTER DO NOME (POSIÇÃO 0) E JOGA PARA UMA VARIÁVEL CHAMADA "LETRA_INICIAL".

      se (letra_inicial == 'A' ou letra_inicial == 'E' ou letra_inicial == 'I' ou letra_inicial == 'O' ou letra_inicial == 'U') {     //APÓS AS ETAPAS ACIMA, A VARIÁVEL "LETRA_INICIAL" É COMPARADA COM AS VOGAIS EM CAIXA ALTA PARA VERIFICAR SE O NOME COMEÇA COM VOGAL OU NÃO.             
                                                                                                                                            
        escreva("[", posicao_nome, "] = ", nome[posicao_nome], " ; ")
        total_vogal++   //CALCULA O TOTAL DE PALAVRAS QUE COMEÇAM COM VOGAL
        u.aguarde(300)
      }
      
    }

    escreva("   TOTAL = ", total_vogal)

    //ANÁLISE DO DIGITO
    escreva(
      "\n----------------------------------------\n",
      "Nomes que possuem a letra ", digito, ":\n"
    )

    para (posicao_nome = 0; posicao_nome < u.numero_elementos(nome); posicao_nome++) {    //ESTE LAÇO É USADO PARA VERIFICAR CADA NOME

      se (txt.posicao_texto(digito, txt.caixa_alta(nome[posicao_nome]), 0) != -1) {      //A EXPRESSÃO VERIFICA SE O DIGITO (CARACTER 'S) É ENCONTRADO EM ALGUMA POSIÇÃO DO NOME ANALISADO
        escreva("[", posicao_nome, "] = ", nome[posicao_nome], " ; ")                    //CASO SEJA ENCONTRADO EM ALGUMA POSIÇÃO, ESTA SERÁ MAIOR OU IGUAL A ZERO, LOGO, DIFERENTE DE -1. POIS AS POSIÇÕES COMEÇAM A CONTAR A PARTIR DO ZERO. 
        total_digito++                                                                   //NESTE CASO, SERÁ ESCRITO O NOME NA LISTA DOS QUE POSSUEM O DIGITO E CONTABILIZADO NO TOTAL DE NOMES QUE POSSUEM O DIGITO "TOTAL_DIGITO".
      }

      u.aguarde(300)
    }

    escreva("   TOTAL = ", total_digito)
    
  }
}
