programa
{
	
	funcao inicio()
	{
	cadeia pularT
	inteiro saldo = 9999
	inteiro aposta
	inteiro nn1
	inteiro nnA //Números número aleatório
	inteiro nCor
	cadeia resp = "blablabla"
	cadeia cor
	cadeia dificuldade = "blablabla"

	enquanto(dificuldade !="f" e dificuldade != "F" e dificuldade != "m" e dificuldade !="M" e dificuldade != "h" e dificuldade !="H"){
		escreva("Simulador de roleta\nNúmeros pagam 35 para 1\nPreto e Vermelho paga 1 para 1\nO objetivo é fazer 10000\n\n")
		escreva("\n\n\nEscolha uma dificuldade: Fácil(f), Médio(m) ou Dificil(h) : ")
		leia(dificuldade)
		limpa()
		se(dificuldade == "f" ou dificuldade == "F"){
			saldo = 4200
		}senao se(dificuldade == "m" ou dificuldade =="M"){
			saldo = 2500
		}senao se(dificuldade == "h" ou dificuldade =="H"){
			saldo = 1000
		}
	}
	enquanto(saldo > 0 e saldo < 10000){
	enquanto(resp != "n" e resp != "N" e resp != "pv" e resp != "PV"){	
	escreva("\nSeu saldo é de ",saldo,"\n")
	escreva("Como deseja apostar ?\n\n\n\nNúmeros(n) ou Preto e Vermelho(pv) ? ")
	leia(resp)
	limpa()
	}
	se(resp == "n" ou resp == "N"){
		limpa()
		escreva("Escolha um número de 0 a 36\nEm qual número deseja apostar ? \n")
		leia(nn1)
		escreva("Saldo = ",saldo,"\nQuanto deseja apostar no número ",nn1," ? ")
		leia(aposta)
		limpa()
			se(nn1 <= 36 e nn1 >= 0 e aposta <= saldo){
		nnA = sorteia(0,36)
		escreva("O número da roleta foi ",nnA,"\n")
			se(nn1 == nnA){
				aposta = aposta*35
				escreva("Você ganhou ",aposta,"reais\n")
				saldo = saldo + aposta
			
			}senao se( nn1 != nnA){
				escreva("Você perdeu ",aposta," reais\n")
				saldo = saldo - aposta
			}
			}senao {
				escreva("Número ou saldo inválido\n")
			}
	}senao se(resp == "pv"){
		limpa()
		enquanto(resp != "p" e resp != "P" e resp != "v" e resp != "V"){
			escreva("Deseja apostar no preto ou vermelho (p) ou (v) ? ")
			leia(resp)
			limpa()
		}
		escreva("Saldo = ",saldo,"\n")
		escreva("Quanto deseja apostar ?")
		leia(aposta)
		limpa()
		se(aposta <= saldo ){
			nCor = sorteia(0, 36)
			se(nCor == 0){
				escreva("Cor verde,você perdeu ",aposta)
				saldo = saldo - aposta
			}senao se(nCor > 0 e nCor < 19){
				escreva("Cor preto")
					se(resp == "p"){
						escreva(",você ganhou ",aposta)
						saldo += aposta
					}senao se(resp == "v"){
						escreva(",você	perdeu ",aposta)
						saldo -= aposta
					}
			}senao se(nCor > 18){
				escreva("Cor vermelho")
					se(resp == "v"){
						escreva(",você ganhou ",aposta)
						saldo += aposta
					}senao se(resp == "p"){
						escreva(",você perdeu ",aposta)	
						saldo -= aposta				
					}
			}
	}senao{
		escreva("Saldo inválido")
	}
	}
	
	}
	se(saldo <= 0 ){
		escreva("\nFim de Jogo, Você  Faliu")
	}senao se(saldo >= 10000){
		se(dificuldade == "f" ou dificuldade == "F"){
			escreva("\n\n\n\n\n\nParabéns Você Venceu no Fácil\nTente uma dificuldade maior da próxima vez")
		}senao se(dificuldade == "m" ou dificuldade == "M"){
			escreva("\n\n\n\n\n\nParabéns Você Venceu na Dificuldade Média")
		}senao se(dificuldade == "h" ou dificuldade == "H"){
			escreva("\n\n\n\n\n\nParabéns Você Venceu na Maior Dificuldade")
		}
	}
	
	//função inicio
	
	}
}
