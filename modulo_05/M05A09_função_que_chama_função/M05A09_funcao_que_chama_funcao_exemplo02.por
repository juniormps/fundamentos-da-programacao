programa {
  //EXERC�CIO 081 - Fun��o Situa��o Aluno
  //Este exerc�cio serve como exemplo de uma fun��o que chama fun��o

  funcao cadeia situacao(real nota_final) {
    cadeia situacao_aluno
    se (nota_final <= 3) {
      situacao_aluno = "REPROVADO!"
    } senao se (nota_final > 3 e nota_final < 6) {
      situacao_aluno = "EM RECUPERA��O!"
    } senao se (nota_final >= 6) {
      situacao_aluno = "APROVADO!"
    }
    retorne situacao_aluno
  }

  funcao real media(real nota1, real nota2) {
    real media_aluno = (nota1 + nota2) / 2
    retorne media_aluno
  }

  funcao inicio() {  
    real nota1 = 5.5
    real nota2 = 9
    escreva(
      "Com as notas ", nota1, " e ", nota2, "\n",
      "o aluno est� ", situacao(media(nota1, nota2))
    )
  }
}
