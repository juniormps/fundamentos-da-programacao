programa {
  inclua biblioteca Util --> u
  funcao inicio() {
    escreva("{ EXERC�CIO 059 - Acima da M�dia }\n")

    //VARI�VEIS
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

    //C�LCULO DA M�DIA DA TURMA
    media = soma / u.numero_elementos(nota)

    //RESULTADOS
    escreva(
      "------------------------------------\n",
      "A m�dia da turma foi ", media, "\n",
      "------------------------------------\n",
      "Os alunos que ficaram acima da m�dia foram:\n"
    )

    para (id_aluno = 0; id_aluno < u.numero_elementos(nota); id_aluno++) {
      se (nota[id_aluno] > media) {
        escreva("Aluno ", id_aluno, "; ")
      }
    }

  }
}
