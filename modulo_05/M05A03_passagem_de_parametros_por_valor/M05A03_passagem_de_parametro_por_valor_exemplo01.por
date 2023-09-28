programa {
  funcao mercado(inteiro din) {
    se (din <= 10) {
      escreva("Comprar bala\n")
    } senao se (din < 50) {
      escreva("Comprar bala\n")
      escreva("Comprar refrigerante\n")
    } senao se(din >= 50) {
      escreva("Comprar bala\n")
      escreva("Comprar refrigerante\n")
      escreva("Comprar pirulito\n")
    }
  }

  funcao inicio() {
    escreva("Jogando bola\n")
    mercado(10)
    escreva("Tomando banho\n")
    mercado(30)  
    escreva("Jogando videogame\n")
    mercado(50)
    escreva("Dormindo\n")
  }
  
}
