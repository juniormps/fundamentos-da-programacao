programa {
	funcao inicio() {
	    escreva("{ EXERC�CIO 014 - Consumidor ganha 10% de desconto }\n\n")
	    
	    real valor  //valor da compra
	    escreva("Qual foi o valor total das suas compras? ")
	    leia(valor)
	    
	    escreva("\n----------------------------------------\n")
	    escreva("Voc� comprou R$" + valor + " na nossa loja. Obrigado!")
	    
	    
	    se (valor>500) {
	        real desc = valor*10/100  //valor do desconto (em R$) a ser recebido
	        escreva("\n========ATEN��O=========\n")
	        escreva("Por fazer mais de R$500 em compras, voc� vai receber R$" + desc +  " de desconto\n")
	        escreva("O valor a ser pago agora � de R$" + (valor-desc) + "! Volte Sempre!\n")
	        //o valor final a ser pago ser� dado pelo valor da compra original (valor) subtra�do do valor do desconto (desc)
	    }
	}
}
