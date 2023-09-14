programa {
  inclua biblioteca Util --> u
  funcao inicio() {
    escreva("{ EXERCÍCIO 059 - Acima da Média }\n")

    //VARIÁVEIS
    inteiro id_aluno
    real nota[6], media, soma = 0

    escreva(
      "------------------------------------\n",
      "          ESCOLA ESTUDONAUTA\n",
      "------------------------------------\n"
    )

    //PREENCHIMENTO DAS NOTAS DOS ALUNOS E SOMA DAS NOTAS
    para (id_aluno = 0; id_aluno < u.numero_elementos(nota); id_aluno++) {
      escreva("Nota do Aluno ", id_aluno, ": ")
      leia(nota[id_aluno])

      soma += nota[id_aluno]
    }

    //CÁLCULO DA MÉDIA DA TURMA
    media = soma / u.numero_elementos(nota)

    //RESULTADOS
    escreva(
      "------------------------------------\n",
      "A média da turma foi ", media, "\n",
      "------------------------------------\n",
      "Os alunos que ficaram acima da média foram:\n"
    )

    para (id_aluno = 0; id_aluno < u.numero_elementos(nota); id_aluno++) {
      se (nota[id_aluno] > media) {
        escreva("Aluno ", id_aluno, "; ")
      }
    }

  }
}
