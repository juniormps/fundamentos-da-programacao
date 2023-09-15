programa {
  inclua biblioteca Tipos --> tip
  inclua biblioteca Matematica --> mat
  inclua biblioteca Util --> u
  funcao inicio() {
    escreva("{ EXERCÍCIO 063 - Pessoas e Idades }\n\n")

    //VARIÁVEIS
    cadeia nome[6]    
    inteiro idade[6]
    inteiro cadastro
    inteiro maior_idade
    inteiro soma_idades = 0
    real media_idades = 0
    

    para (cadastro = 0; cadastro < u.numero_elementos(nome); cadastro++) {
      escreva("====== CADASTRO ", cadastro, " ======\n")

      escreva("Nome da pessoa: ")
      leia(nome[cadastro])

      escreva(" Idade de ", nome[cadastro], ": ")
      leia(idade[cadastro])

      soma_idades += idade[cadastro]

    }

    escreva("\n==== ANALISANDO AS PESSOAS CADASTRADAS ====\n")

    //CALCULANDO E EXIBINDO A MÉDIA DAS IDADES
    media_idades = tip.inteiro_para_real(soma_idades) / u.numero_elementos(nome)
    escreva("A média de idade do grupo cadastrado é de ", mat.arredondar(media_idades, 2), " anos.\n")
    
    //PESSOAS ACIMA DA MÉDIA DE IDADE
    escreva("Pessoa(s) acima da média:\n")

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
      "A maior idade do grupo é ", maior_idade, " anos.\n"
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
