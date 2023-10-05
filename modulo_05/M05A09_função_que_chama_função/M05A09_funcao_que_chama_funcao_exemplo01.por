programa {

  funcao media(real a, real b) {
    retorne (a + b) / 2
  }

  funcao cadeia situacao(real nota1, real nota2) {
    real m = media(nota1, nota2)
    se (m < 3) {
       retorne "REPROVADO!"
    } senao se (m < 7) {
      retorne "EM RECUPERAÇÃO!"
    } senao {
      retorne "APROVADO!"
    }
  }

  funcao inicio() {  
    real n1, n2
    escreva("Primeira nota: ")
    leia(n1)
    escreva("Segunda nota: ")
    leia(n2)
    escreva(
      "Com as notas ", n1, " e ", n2, "\n",
      "o aluno está ", situacao(n1, n2)
    )
  }
}
