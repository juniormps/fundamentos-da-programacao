programa {
	funcao inicio() {
		inteiro num
		escreva("Digite um n�mero: ")
		leia(num)
		escreva("Voc� acabou de digitar o valor " + num)
		se (num%2==0)  //Mesmo exemplo que o anterior, por�m sem a delimita��o dos blocos
		    escreva(" e ele � PAR.")
		senao
		    escreva(" e ele � �MPAR.")
	}
}
