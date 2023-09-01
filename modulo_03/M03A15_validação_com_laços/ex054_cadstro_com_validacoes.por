programa {
  inclua biblioteca Tipos --> tip
  inclua biblioteca Texto --> txt
  funcao inicio() {
    escreva("{ EXERCÍCIO 054 - Cadastro Com Validações }\n\n")

    //VARIÁVEIS
    cadeia nome, resp, mais_novo, mais_velho
    inteiro idade, c = 0, maior_id = 0, menor_id = 999
    caracter continuar

    faca {
      c++

      escreva(
      "-----------------------------\n",
      "\t\t\t\t\tPESSOA ", c, "\n",
      "-----------------------------\n"
      )

      enquanto (verdadeiro){
        escreva("NOME: ")
        leia(nome)
        se (txt.numero_caracteres(nome) >= 3) {
          pare 
        } senao {
          escreva("<<ERRO>> O nome deve ter pelo menos 3 letras.\n")
        }
      }

      enquanto (verdadeiro) {
        escreva("IDADE: ")
        leia(resp)
        se (tip.cadeia_e_inteiro(resp, 10)) {
          idade = tip.cadeia_para_inteiro(resp, 10)
          se (idade >= 0 e idade <= 130){
            pare 
          } senao {
            escreva("<<ERRO>> Idade Inválida\n")
          }
        } senao {
          escreva("<<ERRO>> A idade deve ser um número inteiro.\n")
        }
      }
      /*
      se (idade > maior_id) {
        maior_id = idade
        mais_velho = nome
      }

      se (idade < menor_idade) {
        menor_id = idade
        mais_novo = nome
      }*/

      enquanto (verdadeiro) {
        escreva("Quer continuar? [S/N] ")
        leia(resp)
        se (tip.cadeia_e_caracter(resp)){
          continuar = tip.cadeia_para_caracter(resp)
          se (resp == 's' ou resp == 'S' ou resp == 'n' ou resp == 'N') {
            pare
          } senao {
            escreva("<<ERRO>> Resposta inválida! Digite S ou N\n")
          }
        } senao {
          escreva("<<ERRO>> A resposta deve ser apenas uma letra.\n")
        }
      }
      
    } enquanto (resp == 's' ou resp == 'S')

    escreva(
      "\n===============================\n",
      "Você cadastrou ", c, " pessoas.",
      mais_novo, " é a pessoa mais nova, com ", menor_id, " anos.\n",
      mais_velho, " é a pessoa mais velha, com ", maior_id, " anos.\n",
      "===============================\n"
    )
  }
}
