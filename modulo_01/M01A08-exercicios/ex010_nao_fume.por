programa {
    inclua biblioteca Matematica --> mat
	funcao inicio() {
		escreva("{ EXERC�CIO 010 - N�o Fume }\n")
		escreva("Cada cigarro reduz 10 minutos de vida\n")
		escreva("--------------------------------------\n")
		real tempo_fum
		real quant_dia
		escreva("H� quantos anos voc� fuma? ")
		leia(tempo_fum)
		escreva("Quantos cigarros voc� fuma por dia? ")
		leia(quant_dia)
		real total_cig = tempo_fum*365*quant_dia //total de cigarros fumados
		real tempo_perd = mat.arredondar((total_cig*10/1440), 2) //tempo de vida perdido em dias
		escreva("\nAo todo, at� agora voc� j� fumou " + total_cig + " cigarros!\n")
		escreva("Estima-se que voc� j� perdeu " + tempo_perd + " dias de vida!\n")
	}
}
