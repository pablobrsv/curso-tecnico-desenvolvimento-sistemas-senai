programa {
    funcao inicio() {
        inteiro numero
        
        escreva("Coloque o número parâmetro: ")
        leia(numero)
        
        escrever_tabuada(numero)
    }

    funcao escrever_tabuada(inteiro numero) {
        
        para(inteiro i = 1; i <= 10; i++){
            escreva(numero, " x ", i, " = ", numero * i, "\n")
        }      
    }
}
