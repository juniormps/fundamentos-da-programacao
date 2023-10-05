programa {
  //EXERCÍCIO 080 - Função Muda Preço

  inclua biblioteca Util --> u

  funcao real mudapreco(inteiro preco_original, inteiro coeficiente, caracter fator) {
    real novo_preco
    se (fator == 'A') {
      novo_preco = preco_original + (preco_original * coeficiente / 100)
    } senao se (fator == 'D') {
      novo_preco = preco_original - (preco_original * coeficiente / 100)
    }
    retorne novo_preco
  }

  funcao inicio() {  
   escreva("\n Preço Original: R$1000")
   u.aguarde(400)
   escreva("\n Aumento de 20%: R$", mudapreco(1000, 20, 'A'))
   u.aguarde(400)
   escreva("\n Desconto de 15%: R$", mudapreco(1000, 15, 'D'))
  }
}
