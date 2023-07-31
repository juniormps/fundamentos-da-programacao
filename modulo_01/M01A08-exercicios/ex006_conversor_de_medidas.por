programa {
    inclua biblioteca Matematica --> mat
	funcao inicio() {
		escreva("{ EXERCÍCIO 006 - Conversor de medidas }\n")
		real m1
		escreva("Distância em metros: ")
		leia(m1)
		escreva("\n------------CONVERTENDO-----------\n")
		escreva("\n" + mat.arredondar((m1/1000), 1) + " Km\n")
		escreva(mat.arredondar((m1/100), 1) + " Hm\n")
		escreva(mat.arredondar((m1/10), 1) + " Dam\n")
		escreva(mat.arredondar((m1*10), 1) + " dm\n")
		escreva(mat.arredondar((m1*100), 1) + " cm\n")
		escreva(mat.arredondar((m1*1000), 1) + " mm\n")
	}
}

