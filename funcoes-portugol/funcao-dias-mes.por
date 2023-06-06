programa
{
	funcao inteiro diasMes(inteiro mes){
		inteiro dias, ano

		se(mes == 2){
			dias = 28
		} senao {
			se(mes == 1 ou mes == 3 ou mes == 5 ou mes == 7 ou mes == 8 ou mes == 10 ou mes == 12){
				dias = 31
		} senao {
			dias = 30
			}		
		}	
		retorne dias
	}
	
	funcao inicio()
	{
		inteiro mes
		leia(mes)
		escreva("\nA quantidade de dias é: ", diasMes(mes))
	
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 377; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */