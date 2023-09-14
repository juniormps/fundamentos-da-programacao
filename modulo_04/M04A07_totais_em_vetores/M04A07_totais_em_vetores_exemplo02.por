programa {
  inclua biblioteca Matematica --> mat
  inclua biblioteca Tipos --> tip
  inclua biblioteca Util --> u
  funcao inicio() {
    
    //VARIÁVEIS
    inteiro vet[9], p, soma = 0, chave
    real media = 0.0

    //GERA NÚMEROS PARA O VETOR
    para (p = 0; p < u.numero_elementos(vet); p++) {
      vet[p] = u.sorteia(1, 10)
    }

    //MOSTRA O VETOR NA TELA
    escreva("O vetor gerado foi: \n")
    para (p = 0; p < u.numero_elementos(vet); p++) {
      escreva(vet[p], " --> ")
      u.aguarde(500)
    }

    escreva("FIM\n")

    //CÁLCULOS
    para (p = 0; p < u.numero_elementos(vet); p++) {
        soma += vet[p]
    }

    media = tip.inteiro_para_real(soma) / u.numero_elementos(vet)

    //RESULTADOS
    escreva("A soma de todos os valores é igual a ", soma, "\n")
    escreva("E a média dos valores é igual a ", mat.arredondar(media, 2), "\n")

  }
}
