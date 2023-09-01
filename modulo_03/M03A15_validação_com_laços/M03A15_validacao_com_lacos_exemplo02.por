programa {
	funcao inicio() {
		caracter sexo
		inteiro idade
		
		faca {
		    escreva("Digite o sexo: ")
		    leia(sexo)
		} enquanto (nao(sexo == 'M' ou sexo == 'F'))  
		
		faca {
		    escreva("Digite a idade: ")
		    leia(idade)
		} enquanto (nao(idade >= 0 e idade <= 130))
	}
}
