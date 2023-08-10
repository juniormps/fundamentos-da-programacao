programa {
    inclua biblioteca Matematica --> mat
	funcao inicio() {
		escreva("{ EXERCÍCIO 018 - Preço da Passagem }\n\n")
		
		// Informações
		// se a distância da viagem for MENOR que 200Km, o valor cobrado por Km será de R$0,50
		// se a distância da viagem form MAIOR OU IGUAL a 200Km, o valor cobrado por Km será de R$0,35
		
		escreva("------CALCULE O VALOR DA PASSAGEM------\n\n")
		
		real dist  //esta variável informa a distância
		
		escreva("Informe a distância total da viagem (em Km): ")
		leia(dist)
		
		se (dist<200) {
		    escreva("\nUma viagem de " + dist + "Km vai custar R$0,50/Km. Sendo o valor total igual a: R$" + mat.arredondar((dist*0.5), 2) + "\n")
		} senao {
		    escreva("\nUma viagem de " + dist + "Km vai custar R$0,35/Km. Sendo o valor total igual a: R$" + mat.arredondar((dist*0.35), 2) + "\n")
		}
	}
}
