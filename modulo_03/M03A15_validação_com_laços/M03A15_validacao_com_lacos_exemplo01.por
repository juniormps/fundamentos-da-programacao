programa {
	funcao inicio() {
		caracter sexo
		inteiro idade
		
		faca {
		    escreva("Digite o sexo: ")
		    leia(sexo)
		} enquanto (sexo != 'M' e sexo != 'F')  //IMPORTANTE se atentar quanto ao uso correto do "e" ou do "ou"
		
		faca {
		    escreva("Digite a idade: ")
		    leia(idade)
		} enquanto (idade <= 0 ou idade >= 130)
	}
}
