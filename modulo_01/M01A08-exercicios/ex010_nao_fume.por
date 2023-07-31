programa {
    inclua biblioteca Matematica --> mat
	funcao inicio() {
		escreva("{ EXERCÍCIO 010 - Não Fume }\n")
		escreva("Cada cigarro reduz 10 minutos de vida\n")
		escreva("--------------------------------------\n")
		real tempo_fum
		real quant_dia
		escreva("Há quantos anos você fuma? ")
		leia(tempo_fum)
		escreva("Quantos cigarros você fuma por dia? ")
		leia(quant_dia)
		real total_cig = tempo_fum*365*quant_dia //total de cigarros fumados
		real tempo_perd = mat.arredondar((total_cig*10/1440), 2) //tempo de vida perdido em dias
		escreva("\nAo todo, até agora você já fumou " + total_cig + " cigarros!\n")
		escreva("Estima-se que você já perdeu " + tempo_perd + " dias de vida!\n")
	}
}
