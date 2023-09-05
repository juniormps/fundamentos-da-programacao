programa {
  inclua biblioteca Util --> u
  funcao inicio() {
    //Outro exemplo de PERCURSO EM VETORES
    
    inteiro idade[4]
    inteiro c

    para(c = 0; c < 4; c++) {
      idade[c] = u.sorteia(1, 10)
    }

    escreva("FIM")

  }
}
