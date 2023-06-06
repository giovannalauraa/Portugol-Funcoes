programa
{
	funcao inteiro somar(inteiro a, inteiro b){
		retorne a +b
	}

	funcao inteiro quadrado(inteiro c){
		retorne c*c
	}

	funcao menu(){
		escreva("\n\n    Menu:\n")
		escreva("--------------")
		escreva("\n 1 - Soma;")
		escreva("\n 2 - Potência;")
		escreva("\n 3 - Sair.\n\n\n")
	}
	
	funcao inicio()
	{
		inteiro x, y, opcao
		escreva("Digite 2 valores: ")
		leia(x, y)

		faca{
			menu()
			escreva("\nDigite a opção desejada: ")
			leia(opcao)
		}enquanto(opcao < 1 ou opcao > 3)
		
			escolha(opcao){
			caso 1:
				escreva("\nSoma: ", somar(x,y))
				pare
			caso 2:
				escreva("\nQuadrado 1: ", quadrado(x))
				escreva("\nQuadrado 2: ", quadrado(y))
				pare
			caso 3:
				escreva("\nFinalizando...")
				pare
			caso contrario:
				escreva("\nOpção inválida!")
			}	
		}
	}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 787; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */