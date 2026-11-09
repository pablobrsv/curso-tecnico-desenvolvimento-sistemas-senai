programa {
  funcao inicio() {
    inteiro numero, vetor[] = {5,8,10,40,60,90,12,30,25,18}
    escreva("Digite o número que deseja alterar: ")
    leia(numero)
    trocar_numero(vetor,numero)
    imprime(vetor)
  }

  funcao trocar_numero(inteiro &v[], inteiro num){
    v[0]= num
  }

  funcao imprime(inteiro vetor[]){
    para(inteiro i=0; i<10; i++){
        escreva(vetor[i], "\n")
    }
  }
}
