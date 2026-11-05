programa {
    funcao inicio() {
        inteiro x, y
        
        // Entrada de dados guiada e separada passo a passo
        escreva("Digite o valor de X (apenas números): ")
        leia(x)
        
        escreva("Digite o valor de Y (apenas números): ")
        leia(y)
        
        // Chamada da função e exibição dos resultados
        escreva("O resultado é: ", soma(x, y), "\n")
        escreva("Valor de X: ", x, "\n")
        escreva("Valor de Y: ", y, "\n")
    }
    
    // A função vizinha recebe os parâmetros por referência (&)
    funcao inteiro soma(inteiro &x, inteiro &y) {
        inteiro resultado
        
        resultado = x + y
        
        // Modifica os valores originais na memória (devido ao &)
        x = 10
        y = 20
        
        retorne resultado
    }
}
