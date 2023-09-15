programa {
  inclua biblioteca Texto --> txt
  inclua biblioteca Util --> u
  funcao inicio() {
    escreva("{ EXERCÍCIO 061 - Analisando Nomes }\n")

    //VARIÁVEIS
    cadeia nome[6]
    caracter digito = 'S'
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

    para (posicao_nome = 0; posicao_nome < u.numero_elementos(nome); posicao_nome++) {    //FOI UTILIZADO ESTE LAÇO PARA VERIFICAR CADA NOME
        
        se (txt.caixa_alta(txt.obter_caracter(nome[posicao_nome], 0)) == 'A' ou     //A FUNÇÃO "OBTER_CARACTER" SELECIONA O PRIMEIRO CARACTER DE CADA NOME E
            txt.caixa_alta(txt.obter_caracter(nome[posicao_nome], 0)) == 'E' ou     //COMPARA COM OS VALORES "A, E, I, O, U" PARA VERIFICAR SE O PRIMEIRO CARACTER É OU NÃO UMA VOGAL.
            txt.caixa_alta(txt.obter_caracter(nome[posicao_nome], 0)) == 'I' ou     //MAS ANTES DISSO, FOI UTILIZADA A FUNÇÃO "CAIXA ALTA" PARA TRANSFORMAR O PRIMEIRO CARACTER 
            txt.caixa_alta(txt.obter_caracter(nome[posicao_nome], 0)) == 'O' ou     //SEMPRE EM CAIXA ALTA ANTES FAZER A COMPARAÇÃO. PARA QUE ASSIM NÃO SEJA NECESSÁRIO AS VOGAIS
            txt.caixa_alta(txt.obter_caracter(nome[posicao_nome], 0)) == 'U') {     //QUE SE DESEJA COMPARAR EM MINÚSCULAS TAMBÉM.
                                                                                    
                                                                                    
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

      para (indice_nome = 0; indice_nome < txt.numero_caracteres(nome[posicao_nome]); indice_nome++) {    //ESTE OUTRO LAÇO É USADO PARA VERIFICAR CADA CARACTER DE CADA NOME ATÉ ENCONTRAR O DIGITO (CARACTER 'S').

        se (txt.caixa_alta(txt.obter_caracter(nome[posicao_nome], indice_nome)) == digito) {      //A FUNÇÃO "OBTER CARACTER" SELECIONA O CARACTER DO NOME QUE ESTÁ SENDO ANALISADO. A POSIÇÃO DESTE CARACTER SELECIONADO É INDICADA PELA VARIÁVEL "INDICE_NOME".
          escreva("[", posicao_nome, "] = ", nome[posicao_nome], " ; ")                           //APÓS SELECIONADO, ELE É COMPARADO COM O DIGITO (CARACTER 'S') E, CASO SEJA IGUAL AO DIGITO, O PROGRAMA ADICIONA O NOME NA LISTA DE NOMES QUE CONTÊM O DIGITO E 
          total_digito++                                                                          //ADICIONA  AO TOTAL DE PALAVRAS QUE POSSUEM O DIGITO (CARACTER 'S'). APÓS ISTO, O LAÇO É PARADO COM O COMANDO "PARE".
          pare
        }
      }

      u.aguarde(300)
    }

    escreva("   TOTAL = ", total_digito)
    
  }
}
