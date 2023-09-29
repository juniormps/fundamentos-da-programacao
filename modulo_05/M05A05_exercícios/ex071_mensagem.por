programa {
  //EXERCÍCIO 071 - Mensagem

  inclua biblioteca Texto --> txt
  inclua biblioteca Util --> u
  funcao linha(inteiro tamanho) {
    para (inteiro dimensao = 1; dimensao <= tamanho; dimensao++) {
      escreva("-")
      u.aguarde(50)
    }
    escreva("\n")
  }

  funcao mensagem(cadeia texto) {
    inteiro tamanho_texto = txt.numero_caracteres(texto)
    linha(tamanho_texto)
    para (inteiro letra = 0; letra < tamanho_texto; letra++) {
      escreva(txt.extrair_subtexto(texto, letra, letra + 1))
      u.aguarde(50)
    }
    escreva("\n")
    linha(tamanho_texto)
  }

  funcao inicio() {
    mensagem("Oi, tudo bem?")
    mensagem("Eu sou aluno do Estudonauta!!!")
    mensagem("Estou aprendendo a programar!!")
  }
}
