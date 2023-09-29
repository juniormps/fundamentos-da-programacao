programa {
  //EXERCÍCIO 069 - Meu Escreva
  //Versão do professor

  inclua biblioteca Util --> u
  funcao vazio meu_escreva(cadeia txt, inteiro quantidade, inteiro borda) {
    
    inteiro volta  //variável de controle do laço que indicará quantas vezes a variável txt será escrita.
    cadeia faixa

    escolha (borda) {
      caso 1:
          faixa = "+--------========--------\n"
          pare
      caso 2:
          faixa = "~~~~~~~~::::::::~~~~~~~~\n"
          pare
      caso 3:
          faixa = "<<<<<<<<-------->>>>>>>>\n"
          pare
    }

    escreva(faixa)

    para (volta = 1; volta <= quantidade; volta++) {
      escreva(txt, "\n")
      u.aguarde(300)
    }

    escreva(faixa)

  }

  funcao inicio() {
    meu_escreva("Sou Estudonauta", 1, 1)
    meu_escreva("Estou aprendendo a programar", 3, 2)
    meu_escreva("E estou adorando", 2, 3)
    meu_escreva("Sucesso total!", 5, 0)
  }
}
