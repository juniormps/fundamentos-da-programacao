programa {
  //EXERC�CIO 069 - Meu Escreva
  //Vers�o do professor

  inclua biblioteca Util --> u
  funcao vazio meu_escreva(cadeia txt, inteiro quantidade, inteiro borda) {
    
    inteiro volta  //vari�vel de controle do la�o que indicar� quantas vezes a vari�vel txt ser� escrita.
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
