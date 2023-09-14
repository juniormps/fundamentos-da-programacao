programa {
  inclua biblioteca Util --> u
  funcao inicio() {
    escreva("{ EXERCÍCIO 062 - Listagem de Dados }\n\n")

    //VARIÁVEIS
    cadeia nome[6]    
    caracter sexo[6]
    real salario[6]
    inteiro cadastro
    

    para (cadastro = 0; cadastro < u.numero_elementos(nome); cadastro++) {
      escreva("====== CADASTRO ", cadastro, " ======\n")

      escreva("NOME: ")
      leia(nome[cadastro])

      escreva("SEXO [M/F]: ")
      leia(sexo[cadastro])

      escreva("SALÁRIO: R$")
      leia(salario[cadastro])

    }

    limpa()

    escreva(
      "           LISTAGEM COMPLETA\n",
      "------------------------------------------\n",
      "NOME                   SEXO        SALÁRIO\n",
      "------------------------------------------\n"
    )

    para (cadastro = 0; cadastro < u.numero_elementos(nome); cadastro++) {
      escreva(nome[cadastro], "                   ", sexo[cadastro], "        ", salario[cadastro], "\n")
    }
    
  }
}
