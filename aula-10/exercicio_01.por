programa {
  funcao inicio() {
    cadeia nome
		inteiro idade
		escreva("Nome: ")
		leia(nome)
		escreva("Idade: ")
		leia(idade)
    imprimir(nome, idade)
    escreva("-----------------")
    escreva(nome,"-",idade)
  }
    funcao imprimir(cadeia n, inteiro &i){
      escreva("Nome:",n,"\n")
      escreva("Idade:",i,"\n")
      n="Antônio"
      i=50
    }
}
