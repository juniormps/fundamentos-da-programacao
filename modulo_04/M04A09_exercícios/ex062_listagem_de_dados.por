programa {
  inclua biblioteca Util --> u
  funcao inicio() {
    escreva("{ EXERC�CIO 062 - Listagem de Dados }\n\n")

    //VARI�VEIS
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

      escreva("SAL�RIO: R$")
      leia(salario[cadastro])

    }

    limpa()

    escreva(
      "           LISTAGEM COMPLETA\n",
      "------------------------------------------\n",
      "NOME                   SEXO        SAL�RIO\n",
      "------------------------------------------\n"
    )

    para (cadastro = 0; cadastro < u.numero_elementos(nome); cadastro++) {
      escreva(nome[cadastro], "                   ", sexo[cadastro], "        ", salario[cadastro], "\n")
    }
    
  }
}
