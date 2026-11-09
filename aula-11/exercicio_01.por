programa
{
	// Importação de biblioteca
	inclua biblioteca Util
	
	inteiro assentos[10][12]

	// Função de início serve para orquestrar o fluxo principal
	funcao inicio()
	{
		escreva("Bem-vindo ao Cinema Senai!\n")
		Util.aguarde(2000)
		limpa()
		
		escreva("Mapa inicial de assentos:\n")
		iniciar()
		reservar()
	}	
	
	// Função para deixar o " 0 " como padrão em todos os assentos
	funcao iniciar(){
		para (inteiro linha = 0; linha < 10; linha++){
			para (inteiro coluna = 0; coluna < 12; coluna++){
				assentos[linha][coluna] = 0
				escreva(assentos[linha][coluna], "\t")
			}
			escreva("\n")
		}
	}

	// Função para fazer a reserva do assento
	funcao reservar(){
		inteiro cadeira, fileira
		cadeia repetir
		
		faca{
			escreva("\nDigite a fileira (0 a 9) e o assento (0 a 11): \n")
			leia(cadeira, fileira)
				
			// Validação rigorosa dos limites da matriz (0 a 9 e 0 a 11)
			se (cadeira < 0 ou cadeira >= 10 ou fileira < 0 ou fileira >= 12){
				escreva("Posição Inválida! A matriz possui fileiras de 0 a 9 e assentos de 0 a 11.\n")
				Util.aguarde(2500)
			} 
			senao {
				// Verifica se a cadeira está livre
				se (assentos[cadeira][fileira] == 0){
					assentos[cadeira][fileira] = 1	
					escreva("Cadeira Reservada com Sucesso!\n")
					imprimir_cadeira()
					Util.aguarde(1500)
				} 
				senao {
					escreva("Esta cadeira já está reservada! Escolha outra.\n")
					Util.aguarde(2000)
				}
			}
			
			limpa()
			escreva("Estado atual do cinema:\n")
			imprimir_cadeira()
			
			escreva("\nDeseja realizar outra reserva? (S/s): ")
			leia(repetir)
			limpa()
			
		} enquanto(repetir == "S" ou repetir == "s")
		
		escreva("Obrigado por utilizar o Cinema Senai!\n")
	}
	
	// Função para imprimir cadeiras ocupadas
	funcao imprimir_cadeira(){
		para (inteiro linha = 0; linha < 10; linha++){
			para (inteiro coluna = 0; coluna < 12; coluna++){
				escreva(assentos[linha][coluna], "\t")
			}
			escreva("\n")
		}
	}
}
