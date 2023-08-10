programa {
	funcao inicio() {
		inteiro num
		escreva("Digite um número: ")
		leia(num)
		escreva("Você acabou de digitar o valor " + num)
		se (num%2==0)  //Mesmo exemplo que o anterior, porém sem a delimitação dos blocos
		    escreva(" e ele é PAR.")
		senao
		    escreva(" e ele é ÍMPAR.")
	}
}
