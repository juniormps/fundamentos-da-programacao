programa {
	funcao inicio() {
	    real preco, npreco
	    escreva("Preço do produto: R$")
	    leia(preco)
	    npreco = preco - (preco*30/100)
	    escreva("O novo preço do produto é R$" + npreco)
	}
}	