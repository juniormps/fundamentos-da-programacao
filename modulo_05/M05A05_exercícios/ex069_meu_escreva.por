programa {
  //EXERC�CIO 069 - Meu Escreva

  funcao vazio meu_escreva(cadeia txt, inteiro quantidade, inteiro borda) {
    
    inteiro volta  //vari�vel de controle do la�o que indicar� quantas vezes a vari�vel txt ser� escrita.

    se (borda == 1) {
      escreva("+--------========--------+\n")
      para (volta = 0; volta < quantidade; volta++) {
        escreva(txt, "\n")
      }
      escreva("+--------========--------+\n")
    } senao se (borda == 2) {
      escreva("~~~~~~~~::::::::~~~~~~~~\n")
      para (volta = 0; volta < quantidade; volta++) {
        escreva(txt, "\n")
      }  
      escreva("~~~~~~~~::::::::~~~~~~~~\n")
    } senao se (borda == 3) {
      escreva("<<<<<<<<-------->>>>>>>>\n")
      para (volta = 0; volta < quantidade; volta++) {
        escreva(txt, "\n")
      }
      escreva("<<<<<<<<-------->>>>>>>>\n")
    } senao se (borda == 0) {
      para (volta = 0; volta < quantidade; volta++) {
        escreva(txt, "\n")
      }
    }

  }

  funcao inicio() {
    meu_escreva("Sou Estudonauta", 1, 1)
    meu_escreva("Estou aprendendo a programar", 3, 2)
    meu_escreva("E estou adorando", 2, 3)
    meu_escreva("Sucesso total!", 5, 0)
  }
}
