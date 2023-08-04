programa {
	funcao inicio() {
	    escreva("{ EXERCÍCIO 014 - Consumidor ganha 10% de desconto }\n\n")
	    
	    real valor  //valor da compra
	    escreva("Qual foi o valor total das suas compras? ")
	    leia(valor)
	    
	    escreva("\n----------------------------------------\n")
	    escreva("Você comprou R$" + valor + " na nossa loja. Obrigado!")
	    
	    
	    se (valor>500) {
	        real desc = valor*10/100  //valor do desconto (em R$) a ser recebido
	        escreva("\n========ATENÇÃO=========\n")
	        escreva("Por fazer mais de R$500 em compras, você vai receber R$" + desc +  " de desconto\n")
	        escreva("O valor a ser pago agora é de R$" + (valor-desc) + "! Volte Sempre!\n")
	        //o valor final a ser pago será dado pelo valor da compra original (valor) subtraído do valor do desconto (desc)
	    }
	}
}
