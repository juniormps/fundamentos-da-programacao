programa {
	funcao inicio() {
		inteiro num
		escreva("Digite um n�mero: ")
		leia(num)
		escreva("Voc� acabou de digitar o valor " + num)
		se (num%2==0) {
		    escreva(" e ele � PAR.")
		} senao {
		    escreva(" e ele � �MPAR.")
		}
	}
}
