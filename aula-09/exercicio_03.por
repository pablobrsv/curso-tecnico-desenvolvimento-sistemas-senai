programa {
    funcao inicio() {
        inteiro valor
        inteiro resultado
        
        escreva("Digite o valor: ")
        leia(valor)
        
        resultado = multiplica_por_dez(valor)
        
        escreva("O valor multiplicado por 10 é: ", resultado, "\n")
    }
    
    funcao inteiro multiplica_por_dez(inteiro numero) {
        retorne numero * 10
    }
}
