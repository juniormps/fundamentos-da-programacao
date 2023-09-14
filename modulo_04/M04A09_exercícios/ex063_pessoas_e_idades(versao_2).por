programa {
  //Nesta vers�o do programa, ao inv�s de ser calculada a m�dia das idades cadastradas, � calculada a m�dia de idade do grupo.
  inclua biblioteca Tipos --> tip
  inclua biblioteca Matematica --> mat
  inclua biblioteca Util --> u
  funcao inicio() {
    escreva("{ EXERC�CIO 063 - Pessoas e Idades }\n\n")

    //VARI�VEIS
    cadeia nome[3]    
    inteiro idade[3]
    inteiro cadastro
    inteiro maior_idade
    inteiro soma_idades_dif = 0  //soma das idades diferentes cadastradas
    inteiro total_idades_dif = 0 //quantidade total de idades diferentes
    logico idade_repetida
    real media_idades = 0
    

    para (cadastro = 0; cadastro < u.numero_elementos(nome); cadastro++) {
      escreva("====== CADASTRO ", cadastro, " ======\n")

      escreva("Nome da pessoa: ")
      leia(nome[cadastro])

      escreva(" Idade de ", nome[cadastro], ": ")
      leia(idade[cadastro])
    }

    escreva("\n==== ANALISANDO AS PESSOAS CADASTRADAS ====\n")

    //CALCULANDO E EXIBINDO A M�DIA DE IDADE DO GRUPO
    para (cadastro = 0; cadastro < u.numero_elementos(idade); cadastro++) {
      idade_repetida = falso

      // Verifica se a idade j� foi cadastrada anteriormente
      para (inteiro indice = 0; indice < cadastro; indice++) {
        se (idade[cadastro] == idade[indice]) {
          idade_repetida = verdadeiro
          pare // Sai do loop interno se a idade for repetida
        }
      }

      se (idade_repetida == falso) {
        soma_idades_dif += idade[cadastro]
        total_idades_dif++
      }
    }

    media_idades = tip.inteiro_para_real(soma_idades_dif) / total_idades_dif
    escreva("A m�dia de idade do grupo cadastrado � de ", mat.arredondar(media_idades, 2), " anos.\n")
    
    //PESSOAS ACIMA DA M�DIA DE IDADE
    escreva("Pessoa(s) acima da m�dia:\n")

    para (cadastro = 0; cadastro < u.numero_elementos(nome); cadastro++) {
      se (idade[cadastro] > media_idades) {
        escreva("   --> ", nome[cadastro], " (", idade[cadastro], ")\n")
      }
    }

    //CALCULANDO E EXIBINDO MAIOR IDADE DO GRUPO
    para (cadastro = 0; cadastro < u.numero_elementos(nome); cadastro++) {
      se (cadastro == 0) {
        maior_idade = idade[cadastro]
      } senao {
        se (idade[cadastro] > maior_idade) {
          maior_idade = idade[cadastro]
        }
      }
    }

    escreva(
      "-------------------------------------\n",
      "A maior idade do grupo � ", maior_idade, " anos.\n"
    )

    //CALCULANDO E EXIBINDO PESSOAS COM MAIOR IDADE DO GRUPO
    escreva("Pessoa(s) com maior idade:\n")

    para (cadastro = 0; cadastro < u.numero_elementos(nome); cadastro++) {
      se (idade[cadastro] == maior_idade) {
        escreva("   --> ", nome[cadastro], "\n")
      }
    }

    escreva("-------------------------------------")

  }
}
