programa
{
	inclua biblioteca Calendario --> c
	
	funcao inteiro calculaDiaShow(inteiro diaShow, inteiro mesShow){
	inteiro diaAtual, mesAtual, quantidadeDias = 0, i, j
	
	diaAtual = c.dia_mes_atual()
	mesAtual = c.mes_atual()

	para(i = diaAtual; i < diaShow; i++){
		para(j = mesAtual; j < mesShow; j++){
			quantidadeDias++
		}	
	}
	retorne quantidadeDias
	}
	
	funcao clienteDados(){
	cadeia nome
     inteiro idade,doc
        
     escreva("\n\nNome: ")
     leia(nome)
     escreva("Idade:")
     leia(idade)

	escreva("\nO(A) cliente: ", nome)
	escreva("\nE de idade: ", idade)	
	escreva("\nGarantiu o ingresso com sucesso!\n")
	escreva("\n\n*°*°*°Bom show!°*°*°*\n")
	}

	funcao menu(){
		escreva("\n\n*°*°*°Opções:°*°*°*\n")
		escreva("\n1 - Festival Lollapalooza")
		escreva("\n2 - Rock in Rio")
		escreva("\n3 - Villa Mix Barretos\n\n")
	}

	funcao real calcularValorTotalIngresso(real valor){
		inteiro quantidade
		real imposto = 0.0, valorTotal = 0.0
		
		escreva("\nDigite a quantidade de Ingressos: ")
		leia(quantidade)

		se(quantidade > 10){
			imposto = (valor * 0.2) + 10
			valorTotal = valor + imposto
		} senao {
			se(quantidade <= 10){
				imposto = (valor * 0.05) + 20
				valorTotal = valor + imposto
			}
		}
		retorne valorTotal
	}
	
	funcao inicio()
	{
		cadeia evento[3] ={"festival Lollapalooza", "Rock in Rio", "Villa Mix Barretos"}
        	real valor[3] = {150.00, 200.00, 100.00}    
        	inteiro data[3][2] = {{7,9},{2,11},{1,5}}, quant = 0, diaAtual, mesAtual
        	 
        	inteiro op
		 
        	faca{
        		escreva("\nEscolha o show (1-2-3): ")
        		menu()
        		leia(op)  
        	}enquanto(op > 3 ou op < 1)
        	

        	escolha(op){
        		/* outra forma: 
        		 * i = op - 1
        		escreva("\nEvento: ", evento[i])
        		escreva("\nValor: ", valor[i])
        		escreva("\nData: ", data[i][0], " / ", data[i][1])*/
        		caso 1:
        			escreva("\nO show selecionado foi: ", evento[0], "\n\nCom o valor de: ", valor[0], "\n\nE será no dia: ", data[0][0], " / ", data[0][1])
        			escreva("O valor total ficou: ", calcularValorTotalIngresso(150.00))
        			escreva("\nVamos ver quantos dias faltam para o show? ")
        			escreva("\nFaltam: ", calculaDiaShow(data[0][0], data[0][1]), " dias.")  
        			pare
        		caso 2:
        			escreva("\nO show selecionado foi: ", evento[1], "\n\nCom o valor de: ", valor[1], "\n\nE será no dia: ", data[1][0], " / ", data[1][1])
        			escreva("O valor total ficou: ", calcularValorTotalIngresso(200.00))
        			pare
        		caso 3:
        			escreva("\nO show selecionado foi: ", evento[2], "\n\nCom o valor de: ", valor[2], "\n\nE será no dia: ", data[2][0], " / ", data[2][1])
        			escreva("O valor total ficou: ", calcularValorTotalIngresso(100.00))
        			pare
        		caso contrario:
        			escreva("\nOpção inválida!")
        	}
        	
        	clienteDados()
        			
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 354; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */