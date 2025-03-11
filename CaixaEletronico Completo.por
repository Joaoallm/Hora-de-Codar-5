programa
{
	cadeia nome
   	real saldo = 150.00// Float
   	
	funcao inicio(){
	
	escreva("Olá, qual o seu nome?")	
	leia(nome)	

	escreva("Olá " , nome, " é um prazer ter voce aqui")
	escolhas()
	}

	
	funcao escolhas() {
senha()
		inteiro opcao 

		escreva("\nEscolha uma opção:\n")
		escreva("1. Ver saldo\n")
		escreva("2. Extrato\n")
		escreva("3. Fazer saque\n")
		escreva("4. Deposito\n")
		escreva("5. transferencia\n")
		escreva("6. sair\n")
		leia(opcao)

		escreva("A opção selecionada foi: " +opcao + "\n")

    		escolha(opcao){
    			caso 1: 
		 		verSaldo()
		 		pare   // Impede que as instruções do caso 2 sejam executadas
		 	caso 4: 
		 		fazerDeposito()
		 		pare   // Impede que as instruções do caso 2 sejam executadas
		 	caso 3: 
		 		fazerSaque()
		 		pare
		 	caso 2:
		 		extrato()
		 		pare
		 	caso 5:
		 		transferencia()	
		 		pare
		 	caso 6:
		 		sair()
		 		pare	
		 	caso contrario: // Será executado para qualquer opção diferente de 1, 2 ou 3
		 		escreva ("Opção Inválida !")
		 		escolhas()
		
    		}
 
    		
    		

	}
		funcao senha(){
			inteiro charada = 3589
			escreva("\nInforme a senha: ")
			leia(charada)

			se(charada != 3589){
				escreva("Senha incorreta, tente novamente")
				senha()
			}
		}

	funcao verSaldo(){
		senha()
	    escreva("Seu saldo atual é: ", saldo, "\n")
	    escolhas()
	}
	
	funcao fazerDeposito() {
		senha()
		real deposito
		
		escreva("Qual o valor para depósito? ")
		leia(deposito)
		
		se (deposito <= 0){
			escreva("Por favor, informe um número válido.\n")
			fazerDeposito()
		} senao {
			saldo = saldo + deposito
			verSaldo()
		}
	}
	
	funcao fazerSaque(){
		senha()
		real saque
	
		escreva("Qual o valor para saque? ")
		leia(saque)
	
		se (saque <= 0){
	        escreva("Por favor, informe um número válido.\n")
	        fazerSaque()
		} 
		senao se(saque > saldo){
			escreva("Operação nao autorizada\n")
			fazerSaque()	
		}
			senao {
			saldo = saldo - saque
			verSaldo()
		}
	
	}

	funcao extrato(){
		senha()
		escreva("Transferencia de R$200,00 reais no dia 07/03\n")
		escolhas()
	}

	funcao transferencia(){
		senha()
		real transf

		escreva("Informe a conta que voce fará a transferencia")
		leia(transf)
		escreva("Qual o valor para transferencia? ")
		leia(transf)
	
		se (transf <= 0){
	        escreva("Por favor, informe um número válido.\n")
	        fazerSaque()
		} 
		senao se(transf > saldo){
			escreva("Operação nao autorizada\n")
			fazerSaque()	
		}
			senao {
			saldo = saldo - transf
			verSaldo()
		}
	
	}
	funcao erro() {
		escreva("Opção Inválida, Informe um numero de 1 a 6")
		escolhas()
	}

	funcao sair(){
		escreva(nome, ", foi um prazer ter voce aqui.")
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2653; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */